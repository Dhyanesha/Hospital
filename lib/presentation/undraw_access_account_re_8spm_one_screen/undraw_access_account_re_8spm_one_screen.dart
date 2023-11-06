import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class UndrawAccessAccountRe8spmOneScreen extends StatelessWidget {
  const UndrawAccessAccountRe8spmOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 319.v,
          width: 318.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPath1,
                height: 68.v,
                width: 73.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPath1,
                height: 93.v,
                width: 40.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 36.h,
                  bottom: 1.v,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 63.h),
                  padding: EdgeInsets.all(7.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup24,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: 143.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 56.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup25,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 65.adaptSize,
                            width: 65.adaptSize,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath6,
                                  height: 20.v,
                                  width: 15.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 9.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath6,
                                  height: 20.v,
                                  width: 15.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 22.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLocation,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 9.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath8,
                                  height: 65.adaptSize,
                                  width: 65.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 35.v),
                        _buildWidget(context),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 93.h,
                          child: Divider(
                            color: appTheme.blueGray100,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildWidget(context),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 93.h,
                          child: Divider(
                            color: appTheme.blueGray100,
                          ),
                        ),
                        SizedBox(height: 18.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 14.v,
                          width: 33.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 5.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 308.h,
                  child: Divider(
                    color: appTheme.blueGray800,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorDeepOrange100,
                height: 21.v,
                width: 34.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 48.h,
                  bottom: 101.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorDeepOrange10020x7,
                height: 20.v,
                width: 7.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 46.h,
                  bottom: 5.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorOnprimary,
                height: 6.v,
                width: 16.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 44.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorDeepOrange10020x7,
                height: 20.v,
                width: 9.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 25.h,
                  bottom: 6.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorOnprimary7x16,
                height: 7.v,
                width: 16.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 24.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorDeepOrange10020x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 34.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorOnprimary73x41,
                height: 73.v,
                width: 41.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 24.h,
                  bottom: 9.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPath99,
                height: 64.v,
                width: 36.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 29.h,
                  bottom: 76.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorDeepOrange10023x34,
                height: 23.v,
                width: 34.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 25.h,
                  bottom: 95.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPath101,
                height: 21.v,
                width: 15.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 24.h,
                  bottom: 113.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPath102,
                height: 18.v,
                width: 21.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 33.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse2,
          height: 5.adaptSize,
          width: 5.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgEllipse2,
          height: 5.adaptSize,
          width: 5.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgEllipse2,
          height: 5.adaptSize,
          width: 5.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
        ),
      ],
    );
  }
}
