import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/presentation/my_appointments_page/my_appointments_page.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyAppointmentsTabContainerScreen extends StatefulWidget {
  const MyAppointmentsTabContainerScreen({Key? key}) : super(key: key);

  @override
  MyAppointmentsTabContainerScreenState createState() =>
      MyAppointmentsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MyAppointmentsTabContainerScreenState
    extends State<MyAppointmentsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 29.v),
                  _buildAppointmentStack(context),
                  SizedBox(height: 24.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 539.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            MyAppointmentsPage(),
                            MyAppointmentsPage(),
                            MyAppointmentsPage()
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(children: [
              Container(
                  height: 39.v,
                  width: 42.h,
                  margin: EdgeInsets.only(bottom: 2.v),
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
                        margin: EdgeInsets.fromLTRB(16.h, 19.v, 24.h, 17.v))
                  ])),
              AppbarTitle(
                  text: "My Appointment",
                  margin: EdgeInsets.only(left: 69.h, top: 5.v))
            ])));
  }

  /// Section Widget
  Widget _buildAppointmentStack(BuildContext context) {
    return Container(
        height: 106.v,
        width: 382.h,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
        decoration: AppDecoration.fillCyan50,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 84.v,
                  width: 68.h,
                  decoration: BoxDecoration(
                      color: appTheme.teal900,
                      borderRadius: BorderRadius.circular(10.h)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 11.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Mon", style: CustomTextStyles.titleMedium16_1),
                        Padding(
                            padding: EdgeInsets.only(left: 67.h),
                            child: Text("Tue",
                                style: CustomTextStyles.titleMediumGray70002)),
                        Padding(
                            padding: EdgeInsets.only(left: 67.h),
                            child: Text("Wed",
                                style: CustomTextStyles.titleMediumGray70002)),
                        Padding(
                            padding: EdgeInsets.only(left: 72.h),
                            child: Text("Thu",
                                style: CustomTextStyles.titleMediumGray70002))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("8", style: CustomTextStyles.headlineSmallPrimary),
                        Padding(
                            padding: EdgeInsets.only(left: 78.h),
                            child: Text("9",
                                style: theme.textTheme.headlineSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 78.h),
                            child: Text("10",
                                style: theme.textTheme.headlineSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 78.h),
                            child: Text("11",
                                style: theme.textTheme.headlineSmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 40.v,
        width: 382.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.cyan400,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.black900,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(color: theme.colorScheme.primary),
            tabs: [
              Tab(child: Text("Upcoming")),
              Tab(child: Text("Completed")),
              Tab(child: Text("Completed"))
            ]));
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
            imagePath: ImageConstant.imgGroup76069CyanA200,
            height: 24.v,
            width: 291.h,
            margin: EdgeInsets.fromLTRB(26.h, 9.v, 26.h, 10.v)));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
