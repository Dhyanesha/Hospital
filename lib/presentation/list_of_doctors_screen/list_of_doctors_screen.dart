import '../list_of_doctors_screen/widgets/general_item_widget.dart';
import '../list_of_doctors_screen/widgets/userprofile1_item_widget.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ListOfDoctorsScreen extends StatelessWidget {
  ListOfDoctorsScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9.v),
                      CustomSearchView(
                          controller: searchController, hintText: "Search"),
                      SizedBox(height: 14.v),
                      _buildGeneral(context),
                      SizedBox(height: 22.v),
                      Text("List of Doctors",
                          style: CustomTextStyles.titleLargePoppinsIndigoA200),
                      SizedBox(height: 15.v),
                      _buildUserProfile(context)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(children: [
              SizedBox(
                  height: 39.v,
                  width: 42.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                            onTap: () {
                              onTapView(context);
                            },
                            child: Container(
                                height: 39.v,
                                width: 42.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius:
                                        BorderRadius.circular(21.h))))),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrow2Onerrorcontainer,
                        height: 3.v,
                        width: 2.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.fromLTRB(13.h, 19.v, 27.h, 17.v))
                  ])),
              AppbarSubtitle(
                  text: "Doctors",
                  margin: EdgeInsets.only(left: 112.h, top: 3.v))
            ])));
  }

  /// Section Widget
  Widget _buildGeneral(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Wrap(
            runSpacing: 9.v,
            spacing: 9.h,
            children:
                List<Widget>.generate(5, (index) => GeneralItemWidget())));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 46.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget(onTapBookNowButton: () {
            onTapBookNowButton(context);
          });
        });
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
                bottomRight: Radius.circular(21.h))),
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup76069Primary,
            height: 24.v,
            width: 291.h,
            margin: EdgeInsets.fromLTRB(26.h, 9.v, 26.h, 10.v)));
  }

  /// Navigates to the appointmentOneTabContainerScreen when the action is triggered.
  onTapBookNowButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appointmentOneTabContainerScreen);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
