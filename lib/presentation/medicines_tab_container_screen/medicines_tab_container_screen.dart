import '../medicines_tab_container_screen/widgets/trendingsearches_item_widget.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/presentation/medicines_page/medicines_page.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class MedicinesTabContainerScreen extends StatefulWidget {
  const MedicinesTabContainerScreen({Key? key}) : super(key: key);

  @override
  MedicinesTabContainerScreenState createState() =>
      MedicinesTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MedicinesTabContainerScreenState
    extends State<MedicinesTabContainerScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 24.h, right: 25.h),
                                  child: CustomSearchView(
                                      controller: searchController,
                                      hintText: "Search",
                                      alignment: Alignment.center))),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("Trending Searches",
                                  style: CustomTextStyles
                                      .titleMediumOnErrorContainerSemiBold)),
                          SizedBox(height: 16.v),
                          _buildTrendingSearches(context),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text("Essentials",
                                  style: CustomTextStyles
                                      .titleMediumOnErrorContainerSemiBold)),
                          SizedBox(height: 26.v),
                          _buildDigitalThermometer(context),
                          SizedBox(
                              height: 564.v,
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    MedicinesPage(),
                                    MedicinesPage(),
                                    MedicinesPage(),
                                    MedicinesPage(),
                                    MedicinesPage()
                                  ]))
                        ])))));
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
              AppbarSubtitleOne(
                  text: "Medicines",
                  margin: EdgeInsets.only(left: 114.h, top: 3.v, bottom: 5.v))
            ])));
  }

  /// Section Widget
  Widget _buildTrendingSearches(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Wrap(
            runSpacing: 9.v,
            spacing: 9.h,
            children: List<Widget>.generate(
                6, (index) => TrendingsearchesItemWidget())));
  }

  /// Section Widget
  Widget _buildDigitalThermometer(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 33.h),
        color: appTheme.cyan400,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Container(
            height: 87.v,
            width: 348.h,
            decoration: AppDecoration.fillCyan
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(top: 33.v),
                      child: SizedBox(
                          width: 157.h, child: Divider(indent: 127.h)))),
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle766,
                            height: 87.v,
                            width: 83.h),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Digital Thermometer",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 3.v),
                                  Text("Price : 110    99",
                                      style: theme.textTheme.labelLarge),
                                  SizedBox(height: 3.v),
                                  SizedBox(
                                      width: 129.h,
                                      child: Text(
                                          "100% Mercury free\nAuto switch-Off mode\nEasy-to-read LCD Display",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style:
                                              CustomTextStyles.bodySmallLight))
                                ])),
                        Container(
                            height: 11.v,
                            width: 60.h,
                            margin: EdgeInsets.only(
                                left: 26.h, top: 3.v, bottom: 73.v),
                            child: TabBar(
                                controller: tabviewController,
                                labelPadding: EdgeInsets.zero,
                                tabs: [
                                  Tab(
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsStarRate,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize)),
                                  Tab(
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsStarRate,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize)),
                                  Tab(
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsStarRate,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize)),
                                  Tab(
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsStarRate,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize)),
                                  Tab(
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsStarRateGray30002,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize))
                                ]))
                      ]))
            ])));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
