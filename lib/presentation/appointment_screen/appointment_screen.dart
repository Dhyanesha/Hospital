import '../appointment_screen/widgets/fortyfive_item_widget.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({Key? key}) : super(key: key);

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 39.v,
                                    width: 42.h,
                                    margin: EdgeInsets.only(bottom: 3.v),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
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
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      21.h))))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgArrow2Onerrorcontainer,
                                              height: 3.v,
                                              width: 2.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  left: 13.h, bottom: 16.v))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 79.h, top: 6.v),
                                    child: Text("Appointment",
                                        style: CustomTextStyles
                                            .headlineSmallPoppinsPrimarySemiBold))
                              ]))),
                  SizedBox(height: 30.v),
                  _buildDrAndrew(context),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 645.v,
                      width: 418.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(top: 14.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.h, vertical: 47.v),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder27),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Available time slots",
                                              style: theme
                                                  .textTheme.headlineSmall)),
                                      SizedBox(height: 14.v),
                                      _buildFortyFive(context),
                                      SizedBox(height: 18.v),
                                      _buildBook(context)
                                    ]))),
                        _buildCalendar(context)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 54.v,
        leadingWidth: 76.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroup7,
            margin: EdgeInsets.only(left: 22.h, top: 19.v, bottom: 17.v)),
        centerTitle: true,
        title: AppbarSubtitleFour(text: "9:45"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMaterialSymbol,
              margin: EdgeInsets.fromLTRB(21.h, 18.v, 11.h, 5.v)),
          AppbarSubtitleSeven(
              text: "98%", margin: EdgeInsets.fromLTRB(12.h, 20.v, 11.h, 7.v)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgRaphaelCharging,
              margin: EdgeInsets.only(left: 1.h, top: 11.v, right: 32.h))
        ]);
  }

  /// Section Widget
  Widget _buildDrAndrew(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle762,
              height: 131.adaptSize,
              width: 131.adaptSize,
              radius: BorderRadius.circular(10.h)),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Andrew",
                        style: CustomTextStyles.headlineSmallPrimary),
                    SizedBox(height: 4.v),
                    Text("M.B.B.S", style: CustomTextStyles.labelLargeSemiBold),
                    SizedBox(height: 4.v),
                    SizedBox(
                        width: 204.h,
                        child: Text(
                            "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general dentistry and offers a range of services.",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Wrap(
        runSpacing: 47.v,
        spacing: 47.h,
        children: List<Widget>.generate(5, (index) => FortyfiveItemWidget()));
  }

  /// Section Widget
  Widget _buildBook(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMdiCardsHeartOutline)),
          Expanded(
              child: CustomElevatedButton(
                  text: "Book an Appointment",
                  margin: EdgeInsets.only(left: 21.h),
                  buttonStyle: CustomButtonStyles.fillCyanTL10,
                  onPressed: () {
                    onTapBookAnAppointment(context);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 357.v,
            width: 373.h,
            child: TableCalendar(
                locale: 'en_US',
                firstDay: DateTime(DateTime.now().year - 5),
                lastDay: DateTime(DateTime.now().year + 5),
                calendarFormat: CalendarFormat.month,
                rangeSelectionMode: rangeSelectionMode,
                startingDayOfWeek: StartingDayOfWeek.sunday,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                calendarStyle: CalendarStyle(
                    outsideDaysVisible: false, isTodayHighlighted: true),
                daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                        color: appTheme.black900.withOpacity(0.5),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500)),
                focusedDay: focusedDay,
                rangeStartDay: rangeStart,
                rangeEndDay: rangeEnd,
                onDaySelected: (selectedDay, focusedDay) {},
                onRangeSelected: (start, end, focusedDay) {},
                onPageChanged: (focusedDay) {})));
  }

  /// Navigates to the listOfDoctorsScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listOfDoctorsScreen);
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapBookAnAppointment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }
}
