import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VideoCallScreen extends StatelessWidget {
  VideoCallScreen({Key? key}) : super(key: key);

  TextEditingController messageTwoRowController = TextEditingController();

  TextEditingController messageThreeColumnController = TextEditingController();

  TextEditingController messageFourColumnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 40.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 1044.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(bottom: 53.v),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 73.v,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA200,
                                            borderRadius:
                                                BorderRadius.circular(24.h)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 1031.v,
                                        width: 400.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h, top: 65.v),
                                                  child: _buildSeventyTwo(
                                                      context,
                                                      description:
                                                          "Welcome to the Medical Chatbot. How can I assist you today? ")),
                                              _buildIHaveSymptomsAndNeedButton(
                                                  context),
                                              _buildIHaveSymptomsAndNeedButton1(
                                                  context),
                                              _buildMessageTwo(context),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 33.h,
                                                          top: 389.v),
                                                      child: Row(children: [
                                                        Container(
                                                            width: 91.h,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        8.h,
                                                                    vertical:
                                                                        6.v),
                                                            decoration: AppDecoration
                                                                .fillGray10002
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder6),
                                                            child: Text(
                                                                "Headache",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        Container(
                                                            width: 61.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 12.h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10.h,
                                                                    vertical:
                                                                        6.v),
                                                            decoration: AppDecoration
                                                                .fillGray10002
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder6),
                                                            child: Text("Fever",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        Container(
                                                            width: 92.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 12.h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h,
                                                                    vertical:
                                                                        5.v),
                                                            decoration: AppDecoration
                                                                .fillGray10002
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder6),
                                                            child: Text(
                                                                "Sore Throat",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge))
                                                      ]))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      width: 92.h,
                                                      margin: EdgeInsets.only(
                                                          top: 389.v),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 19.h,
                                                              vertical: 5.v),
                                                      decoration: AppDecoration
                                                          .fillGray10002
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: Text("Others",
                                                          style: theme.textTheme
                                                              .bodyLarge))),
                                              _buildHeadacheButton(context),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 38.h,
                                                          right: 35.h,
                                                          bottom: 238.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 17
                                                                            .h,
                                                                        vertical: 14
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .fillGray10002
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL24),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                          height:
                                                                              2.v),
                                                                      Container(
                                                                          width: 288
                                                                              .h,
                                                                          margin: EdgeInsets.only(
                                                                              left: 4
                                                                                  .h),
                                                                          child: Text(
                                                                              "Rest and stay hydrated.\nTake over-the-counter pain relievers like acetaminophen or ibuprofen for fever and headache.\nGargle with warm saltwater for a sore throat.\nMonitor your temperature regularly.",
                                                                              maxLines: 7,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              style: CustomTextStyles.bodyLargeBluegray90001.copyWith(height: 1.50)))
                                                                    ])),
                                                            SizedBox(
                                                                height: 7.v),
                                                            _buildMessageThreeColumn(
                                                                context),
                                                            SizedBox(
                                                                height: 7.v),
                                                            _buildMessageFourColumn(
                                                                context)
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h,
                                                          right: 11.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            _buildAppBar(
                                                                context),
                                                            SizedBox(
                                                                height: 152.v),
                                                            _buildIHaveQuestionsAboutButton(
                                                                context),
                                                            SizedBox(
                                                                height: 288.v),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMaskGroup29x29,
                                                                height: 29
                                                                    .adaptSize,
                                                                width: 29
                                                                    .adaptSize),
                                                            SizedBox(
                                                                height: 264.v),
                                                            _buildThankYouForYourGuidanceButton(
                                                                context),
                                                            SizedBox(
                                                                height: 24.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 24
                                                                            .h),
                                                                child: _buildSeventyTwo(
                                                                    context,
                                                                    description:
                                                                        "You're very welcome! If you ever have more questions or need assistance in the future, please feel free to reach out. Take care, and I hope you feel better soon!"))
                                                          ])))
                                            ])))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildIHaveSymptomsAndNeedButton(BuildContext context) {
    return CustomElevatedButton(
        height: 35.v,
        width: 292.h,
        text: "I have symptoms and need guidance",
        margin: EdgeInsets.only(top: 150.v),
        buttonStyle: CustomButtonStyles.fillGrayTL7,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildIHaveSymptomsAndNeedButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        width: 303.h,
        text: "I have symptoms and need guidance",
        margin: EdgeInsets.only(top: 242.v, right: 11.h),
        buttonStyle: CustomButtonStyles.fillGrayTL5,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildMessageTwoRow(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: CustomTextFormField(
                controller: messageTwoRowController,
                hintText: "Please select your symptoms",
                hintStyle: CustomTextStyles.bodyLargeBluegray90001,
                borderDecoration: TextFormFieldStyleHelper.fillGrayBL24,
                fillColor: appTheme.gray10002)));
  }

  /// Section Widget
  Widget _buildMessageTwo(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
            padding: EdgeInsets.only(top: 325.v),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup29x29,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(top: 14.v, bottom: 13.v)),
              _buildMessageTwoRow(context)
            ])));
  }

  /// Section Widget
  Widget _buildHeadacheButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        width: 107.h,
        text: "Headache",
        margin: EdgeInsets.only(top: 437.v, right: 11.h),
        buttonStyle: CustomButtonStyles.fillGrayTL5,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildMessageThreeColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 13.h),
        child: CustomTextFormField(
            controller: messageThreeColumnController,
            hintText: "Thank you for your Guidance",
            hintStyle: theme.textTheme.bodyLarge!,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 19.h, vertical: 7.v),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL7,
            fillColor: appTheme.gray10002));
  }

  /// Section Widget
  Widget _buildMessageFourColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 13.h),
        child: CustomTextFormField(
            controller: messageFourColumnController,
            hintText: "I have further queries",
            hintStyle: theme.textTheme.bodyLarge!,
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 19.h, vertical: 7.v),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL7,
            fillColor: appTheme.gray10002));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: 26.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow2,
            margin: EdgeInsets.only(left: 24.h, top: 21.v, bottom: 19.v),
            onTap: () {
              onTapArrowTwo(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 47.h),
            child: Row(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgMaskGroup29x29),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 1.v),
                  child: Column(children: [
                    AppbarSubtitleFive(
                        text: "Doc Assist",
                        margin: EdgeInsets.only(right: 18.h)),
                    SizedBox(height: 3.v),
                    Row(children: [
                      Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                          decoration: BoxDecoration(
                              color: appTheme.green300,
                              borderRadius: BorderRadius.circular(4.h))),
                      AppbarSubtitleSix(
                          text: "Always active",
                          margin: EdgeInsets.only(left: 4.h))
                    ])
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildIHaveQuestionsAboutButton(BuildContext context) {
    return CustomElevatedButton(
        height: 35.v,
        text: "I have questions about medications",
        margin: EdgeInsets.only(left: 55.h, right: 38.h),
        buttonStyle: CustomButtonStyles.fillGrayTL7,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildThankYouForYourGuidanceButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        width: 244.h,
        text: "Thank you for your Guidance",
        buttonStyle: CustomButtonStyles.fillGrayTL5,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        alignment: Alignment.centerRight);
  }

  /// Common widget
  Widget _buildSeventyTwo(
    BuildContext context, {
    required String description,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMaskGroup29x29,
          height: 29.adaptSize,
          width: 29.adaptSize,
          margin: EdgeInsets.only(top: 16.v, bottom: 107.v)),
      Container(
          margin: EdgeInsets.only(left: 5.h),
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
          decoration: AppDecoration.fillGray10002
              .copyWith(borderRadius: BorderRadiusStyle.customBorderBL24),
          child: Container(
              width: 291.h,
              margin: EdgeInsets.only(right: 3.h),
              child: Text(description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray90001
                      .copyWith(color: appTheme.blueGray90001, height: 1.50))))
    ]);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapArrowTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
