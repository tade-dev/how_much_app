import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/enums/enums.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/auth/cubit/register/register_cubit.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/inputs/auth_text_field.dart';
import 'package:how_much_app/ui/widgets/inputs/drop_down_field.dart';
import 'package:how_much_app/ui/widgets/sheet/h_sheets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {

        if(state.updateProfileStatus.isSuccess) {
          context.read<ProfileCubit>().updateEditProfileCurrentState(EditProfileCurrentState.dashboard);
        }

      },
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: HAppBars().mainAppBar(
              context,
              title: "EDIT PROFILE",
              hideIcon: state.editProfileCurrentState == EditProfileCurrentState.dashboard ?
              false:
              true,
              w: IconButton(
                icon: state.updateProfileStatus.isInProgress ||
                        state.uploadImageStatus.isInProgress
                    ? const CupertinoActivityIndicator()
                    : const Icon(Icons.check),
                onPressed: () {
                  context.read<ProfileCubit>().setProfile();
                },
              ),
            ),
            body: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Hero(
                            tag: "profile_image",
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: state.selectedImage != null
                                  ? FileImage(state.selectedImage!)
                                  : (state.userData?.image?.isNotEmpty ?? false)
                                      ? NetworkImage(state.userData!.image!)
                                      : AssetImage(
                                              Assets.images.profileAvatar.path)
                                          as ImageProvider,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                HSheets.showUploadProfilePicSheet();
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: ColorsX.primaryColor,
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "USER INFORMATION",
                            style: getMediumStyle(
                              color: ColorsX.textGrey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          onChanged: (value) {},
                          controller: state.fullName,
                          label: "Fullname",
                          readOnly: true,
                          hintText: "e.g John Doe",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          onChanged: (value) {},
                          readOnly: true,
                          label: "Email",
                          controller: state.emailAddress,
                          hintText: "e.g john@example.com",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DropDownField(
                          onChanged: (value) {},
                          dropDownItems:
                              si<RegisterCubit>().state.genders.map((gender) {
                            return DropdownMenuItem(
                              value: gender,
                              child: Text(gender),
                            );
                          }).toList(),
                          inputType: TextInputType.name,
                          label: "Gender",
                          value: state.userData?.gender,
                          hintText: "Select your gender",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "PROFESSIONAL INFORMATION",
                            style: getMediumStyle(
                              color: ColorsX.textGrey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          onChanged: (value) {},
                          controller: state.yearsOfExperience,
                          label: "Years. of Experience",
                          hintText: "e.g 5",
                          suffixIcon: SizedBox(
                            height: 20,
                            width: 40,
                            child: Center(
                              child: Text(
                                "years",
                                style: getMediumStyle(
                                  color: ColorsX.textGrey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          onChanged: (value) {},
                          label: "Title",
                          controller: state.developerTitle,
                          hintText: "e.g Product designer",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          minLines: 2,
                          maxLines: 5,
                          inputType: TextInputType.multiline,
                          controller: state.certifications,
                          onChanged: (value) {},
                          label: "Certifications",
                          hintText:
                              "e.g AWS Certified Developer, MongoDB Developer Certification",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          minLines: 2,
                          maxLines: 5,
                          inputType: TextInputType.multiline,
                          onChanged: (value) {},
                          label: "Skill stack",
                          controller: state.developerStack,
                          hintText: "e.g Java, Python",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          onChanged: (value) {},
                          label: "Portfolio link",
                          controller: state.portfolioLink,
                          hintText: "e.g https://user.dev",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          onChanged: (value) {},
                          label: "Resume/CV link",
                          controller: state.cvLink,
                          hintText: "e.g https://resume.io.com/",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
