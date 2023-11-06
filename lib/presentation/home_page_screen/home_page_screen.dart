import '../home_page_screen/widgets/componentone_item_widget.dart';
import '../home_page_screen/widgets/medicalhistory_item_widget.dart';
import '../home_page_screen/widgets/ordermedicine_item_widget.dart';
import '../home_page_screen/widgets/userprofile_item_widget.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_floating_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      right: 16.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 9.h),
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search",
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildNinetySix(context),
                        SizedBox(height: 14.v),
                        _buildComponentOne(context),
                        SizedBox(height: 27.v),
                        _buildNinetyEight(context),
                        SizedBox(height: 18.v),
                        SizedBox(
                          height: 165.v,
                          width: 310.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFamous,
                                height: 165.v,
                                width: 296.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 11.h,
                                    vertical: 10.v,
                                  ),
                                  decoration: AppDecoration.fillCyanA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3.v),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgProfile37x37,
                                            height: 37.adaptSize,
                                            width: 37.adaptSize,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Dr. Andrew",
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                                Text(
                                                  "Ortho",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgStar,
                                            height: 11.v,
                                            width: 60.h,
                                            margin: EdgeInsets.only(
                                              left: 51.h,
                                              top: 5.v,
                                              bottom: 21.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8.v),
                                      SizedBox(
                                        width: 256.h,
                                        child: Text(
                                          "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general dentistry and offers a range of services.",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      SizedBox(height: 16.v),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 125.h,
                                            child: Text(
                                              "Monday, Sep 10, 2023.       09.00 am",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            height: 24.v,
                                            width: 104.h,
                                            text: "View Details",
                                            margin: EdgeInsets.only(
                                              left: 29.h,
                                              top: 4.v,
                                            ),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL4,
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargeGray60002,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Text(
                          "Health Records",
                          style: CustomTextStyles.titleLargePoppinsCyan400,
                        ),
                        SizedBox(height: 12.v),
                        _buildMedicalHistory(context),
                        SizedBox(height: 22.v),
                        Text(
                          "Your Medicine",
                          style: CustomTextStyles.titleLargePoppinsCyan400,
                        ),
                        SizedBox(height: 12.v),
                        _buildOrderMedicine(context),
                        SizedBox(height: 23.v),
                        _buildDoctors(context),
                        SizedBox(height: 20.v),
                        _buildUserProfile(context),
                        SizedBox(height: 50.v),
                        _buildDrAndrew(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 96.v,
      leadingWidth: 92.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgUnsplashRidxdghg7pw,
        margin: EdgeInsets.only(left: 26.h),
      ),
      title: AppbarSubtitle(
        text: "Hi, David",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorIndigoA200,
          margin: EdgeInsets.fromLTRB(32.h, 19.v, 32.h, 25.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNinetySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Looking For",
            style: theme.textTheme.headlineLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 11.v,
            ),
            child: Text(
              "More",
              style: CustomTextStyles.labelLargePoppinsGray400.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentOne(BuildContext context) {
    return SizedBox(
      height: 90.v,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 8.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ComponentoneItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Appointment",
            style: CustomTextStyles.titleLargePoppinsCyan400,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 11.v),
            child: Text(
              "More",
              style: CustomTextStyles.labelLargePoppinsGray400.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMedicalHistory(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 75.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 18.h,
            right: 23.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 17.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return MedicalhistoryItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderMedicine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 71.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 21.h,
            right: 13.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 22.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return OrdermedicineItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctors(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Doctors",
            style: CustomTextStyles.titleLargePoppinsCyan400,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 7.v,
            ),
            child: Text(
              "More",
              style: CustomTextStyles.labelLargePoppinsGray400.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 18.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDrAndrew(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle759,
            height: 53.v,
            width: 54.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Andrew",
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "M.B.B.S",
                  style: theme.textTheme.labelLarge,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar,
                  height: 12.v,
                  width: 60.h,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 6.adaptSize,
            width: 6.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 50.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.lightGreenA700,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 1.h,
              bottom: 48.v,
            ),
            child: Text(
              "Active",
              style: theme.textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 43.h),
      decoration: BoxDecoration(
        color: appTheme.indigoA200,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22.h),
          topRight: Radius.circular(21.h),
          bottomLeft: Radius.circular(22.h),
          bottomRight: Radius.circular(21.h),
        ),
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup76069,
        height: 24.v,
        width: 291.h,
        margin: EdgeInsets.fromLTRB(26.h, 9.v, 26.h, 10.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 63,
      width: 63,
      backgroundColor: theme.colorScheme.primary,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup76046,
      ),
    );
  }
}
