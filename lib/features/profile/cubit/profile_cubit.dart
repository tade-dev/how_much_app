import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/api/exceptions.dart';
import 'package:how_much_app/core/api/success.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/entites/no_params.dart';
import 'package:how_much_app/core/model/ranv_model.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:how_much_app/features/profile/data/model/set_profile_model.dart';
import 'package:how_much_app/features/profile/data/model/user_profile_model.dart';
import 'package:how_much_app/features/profile/domain/usecase/profile_u.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  
  GetProfileUsecase getProfileUsecase;
  UploadImageUsecase uploadImageUsecase;
  SetProfileUsecase setProfileUsecase;
  UpdatePasswordUseCase updatePasswordUseCase;
  DeleteAccountUsecase deleteAccountUsecase;

  ProfileCubit(
    this.deleteAccountUsecase,
    this.updatePasswordUseCase,
    this.uploadImageUsecase,
    this.getProfileUsecase,
    this.setProfileUsecase,
  ) : super(const ProfileState.initial());

  resetState(){
    emit(const ProfileState.initial());
  }

  List<String> convertStringToList(String? input) {
    return input!.split(',').map((item) => item.trim()).toList();
  }

  updateSelectedImage(v) {
    emit(state.copyWith(
      selectedImage: v
    ));
  }

  Future getImage({context, s}) async {
    final ImagePicker picker = ImagePicker();
    try {
      var pickedImage = await picker.pickImage(
        source: s,
        maxHeight: 500,
        maxWidth: 500
      );

      if(pickedImage != null) {
        updateSelectedImage(File(pickedImage.path));
        uploadImage(context);
      }

    } on PlatformException catch (e) {
      handleException(e.toString(), context);
    }
  }

  // GET PROFILE
  getProfile(context) async {

      var resp = await getProfileUsecase(NoParams());

      resp.fold((l){
        
        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            userData: r.data,
            gender: TextEditingController(text: r.data?.gender ?? ""),
            fullName: TextEditingController(text: ("${r.data?.firstname} ${r.data?.lastname}")),
            emailAddress: TextEditingController(text: r.data?.email ?? ""),
            certifications: TextEditingController(text: r.data?.certifications?.join(", ")),
            developerStack: TextEditingController(text: r.data?.developerStack?.join(", ")),
            developerTitle: TextEditingController(text: r.data?.developerTitle ?? ""),
            cvLink: TextEditingController(text: r.data?.cvLink ?? ""),
            yearsOfExperience: TextEditingController(text: (r.data?.yearsOfExperience ?? "").toString()),
            portfolioLink: TextEditingController(text: r.data?.portfolioLink ?? ""),
          ));
        }

      }
    );
  }

  // DELETE ACCOUNT
  deleteAccount(context) async {
      emit(state.copyWith(
        deleteAccountStatus: FormzSubmissionStatus.inProgress
      ));

      var resp = await deleteAccountUsecase(NoParams());

      resp.fold((l){

        emit(state.copyWith(
          deleteAccountStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            deleteAccountStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            deleteAccountStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: r.message ?? "Account deleted successfully!");
          si<AppRouter>().replace(LoginScreen());
        }

      }
    );
  }

  // SET PROFILE
  setProfile(context) async {
      emit(state.copyWith(
        updateProfileStatus: FormzSubmissionStatus.inProgress
      ));

      var data = SetProfileModel(
        certifications: convertStringToList(state.certifications?.text),
        developerStack: convertStringToList(state.developerStack?.text),
        developerTitle: state.developerTitle?.text,
        cvLink: state.cvLink?.text,
        yearsOfExperience: int.parse(state.yearsOfExperience!.text),
        portfolioLink: state.portfolioLink?.text,
      );

      var resp = await setProfileUsecase(data);

      resp.fold((l){

        emit(state.copyWith(
          updateProfileStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            updateProfileStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            updateProfileStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: r.message ?? "Account updated successfully!");
          getProfile(context);
        }

      }
    );
  }

  // UPLOAD IMAGE
  uploadImage(context) async {
      emit(state.copyWith(
        uploadImageStatus: FormzSubmissionStatus.inProgress
      ));

      var data = RequestParams(
        image: state.selectedImage?.path
      );

      var resp = await uploadImageUsecase(data);

      resp.fold((l){

        emit(state.copyWith(
          uploadImageStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){
        if (r.success == false) {
          emit(state.copyWith(
            uploadImageStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            uploadImageStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: r.message ?? "Image uploaded successfully!");
        }

      }
    );
  }

}
