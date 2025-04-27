import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/api/exceptions.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/ui/components/advanced_features.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/inputs/drop_down_field2.dart';
import 'package:how_much_app/ui/widgets/inputs/proposal_input_field.dart';

class ProposalDetailsScreen extends StatelessWidget {
  ProposalDetailsScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().mainAppBar(
          title: "GENERATE PROPOSAL",
          w: BlocListener<PricingCubit, PricingState>(
            listener: (context, state) {
              if(state.generationStatus.isFailure) {
                handleException(state.genPricingResponse?.error ?? state.exceptionError , context);
              }else if (state.generationStatus.isSuccess){
                si<PricingCubit>().convertToPdf();
              }
            },
            child: BlocBuilder<PricingCubit, PricingState>(
              builder: (context, state) {
                return state.generationStatus.isInProgress ?
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CupertinoActivityIndicator(),
                ) :
                IconButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<PricingCubit>().generatePricingProposal();
                      } else {
                        AutovalidateMode.disabled;
                      }
                    },
                    icon: Icon(
                      Icons.check,
                      color: ColorsX.primaryColor,
                    ));
              },
            ),
          )),
      body: BlocBuilder<PricingCubit, PricingState>(
        builder: (context, state) {
          return PopScope(
            onPopInvokedWithResult: (didPop, result) {
              // context.read<PricingCubit>().resetState();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      ProposalInputField(
                        onChanged: (v) {
                          context.read<PricingCubit>().updateProjectTitle(v);
                        },
                        label: "Project Title",
                        validator: ValidationBuilder().build(),
                        hintText: "Enter project title",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProposalInputField(
                        onChanged: (v) {
                          context.read<PricingCubit>().updateDescriptionText(v);
                        },
                        maxLines: 10,
                        minLines: 1,
                        label: "Description",
                        validator: ValidationBuilder().build(),
                        hintText: "Enter project description",
                        inputType: TextInputType.multiline,
                        maxLength: 500,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: ProposalInputField(
                              onChanged: (v) {},
                              controller: state.timeline,
                              onTap: () {
                                context.read<PricingCubit>().triggerDatePicker();
                              },
                              validator: ValidationBuilder().build(),
                              readOnly: true,
                              label: "Project Timeline",
                              hintText: "Select project timeline",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 3,
                            child: DropDownField2(
                              onChanged: (v) {
                                context.read<PricingCubit>().updateSelectedCurrency(v);
                              },
                              validator: ValidationBuilder().build(),
                              dropDownItems: state.currencies.map((currency) {
                                return DropdownMenuItem(
                                    value: currency, child: Text(currency));
                              }).toList(),
                              label: "Currency",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SwitchListTile.adaptive(
                        value: state.hasAdvancedFeatures,
                        contentPadding: EdgeInsets.zero,
                        activeColor: ColorsX.primaryColor,
                        onChanged: (v) {
                          context
                              .read<PricingCubit>()
                              .toggleHasAdvancedFetaures();
                        },
                        title: Text(
                          "Add advanced features",
                          style: getMediumStyle(
                              color: ColorsX.textColor, fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Visibility(
                          visible: state.hasAdvancedFeatures,
                          child: const AdvancedFeaturesView())
                    ],
                  ),
                ),
              ),
            ).animate().fade(duration: 500.ms),
          );
        },
      ),
    );
  }
}
