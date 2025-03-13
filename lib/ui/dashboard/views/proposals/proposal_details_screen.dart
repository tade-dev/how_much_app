import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/ui/components/advanced_features.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/inputs/drop_down_field2.dart';
import 'package:how_much_app/ui/widgets/inputs/proposal_input_field.dart';


class ProposalDetailsScreen extends StatelessWidget {
  const ProposalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().mainAppBar(
        title: "GENERATE PROPOSAL",
        w: IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.check,
            color: ColorsX.primaryColor,
          )
        )
      ),
      body: BlocBuilder<PricingCubit, PricingState>(
        builder: (context, state) {
          return PopScope(
            onPopInvokedWithResult: (didPop, result) {
              context.read<PricingCubit>().resetState();
            },
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProposalInputField(
                        onChanged: (v) {
                  
                        },
                        controller: state.description,
                        maxLines: 10,
                        minLines: 1,
                        label: "Description",
                        hintText: "Enter project description",
                        inputType: TextInputType.multiline,
                        maxLength: 500,
                      ),
                      const SizedBox(height: 10,),
                      ProposalInputField(
                        onChanged: (v) {
                  
                        },
                        controller: state.timeline,
                        onTap: () {
                          context.read<PricingCubit>().triggerDatePicker();
                        },
                        readOnly: true,
                        label: "Project Timeline",
                        hintText: "Select desired project timeline",
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: DropDownField2(
                              onChanged: (v) {
                                      
                              },
                              dropDownItems: state.currencies.map((currency){
                                return DropdownMenuItem(
                                  value: currency,
                                  child: Text(currency)
                                );
                              }).toList(),
                              controller: state.selectedCurrency,
                              label: "Currency",
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Expanded(
                            child: ProposalInputField(
                              onChanged: (v) {
                        
                              },
                              onTap: () {
                                
                              },
                              controller: state.projectCost,
                              label: "Project Cost",
                              inputType: TextInputType.number,
                              inputformatters: [
                                LengthLimitingTextInputFormatter(18),
                                FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                                CurrencyTextInputFormatter.currency(
                                  locale: 'en_US',
                                  decimalDigits: 2,
                                  enableNegative: false,
                                  symbol: ''
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      SwitchListTile.adaptive(
                        value: state.hasAdvancedFeatures, 
                        contentPadding: EdgeInsets.zero, 
                        activeColor: ColorsX.primaryColor,
                        onChanged: (v){
                          context.read<PricingCubit>().toggleHasAdvancedFetaures();
                        },
                        title: Text(
                          "Add advanced features",
                          style: getMediumStyle(
                            color: ColorsX.textColor,
                            fontSize: 16
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Visibility(
                        visible: state.hasAdvancedFeatures,
                        child: const AdvancedFeaturesView()
                      )
                    ],
                  ),
                ),
              ).animate().fade(duration: 500.ms),
          );
        },
      ),
    );
  }
}