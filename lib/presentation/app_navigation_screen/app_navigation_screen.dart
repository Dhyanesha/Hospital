import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          userName: "Account Info One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountInfoOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Log in as",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInAsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Log in ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Account Info Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountInfoTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Account Info Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountInfoFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Account Info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Account Info Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountInfoThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "undraw_access_account_re_8spm One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.undrawAccessAccountRe8spmOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "medicines - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medicinesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "home page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "list of doctors",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.listOfDoctorsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "appointment One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.appointmentOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "appointment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "my appointments - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.myAppointmentsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Account Info Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountInfoFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "video call",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.videoCallScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
