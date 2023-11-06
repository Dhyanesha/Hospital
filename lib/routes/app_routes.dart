import 'package:flutter/material.dart';
import 'package:dhyanesh_s_application1/presentation/account_info_one_screen/account_info_one_screen.dart';
import 'package:dhyanesh_s_application1/presentation/log_in_as_screen/log_in_as_screen.dart';
import 'package:dhyanesh_s_application1/presentation/log_in_screen/log_in_screen.dart';
import 'package:dhyanesh_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:dhyanesh_s_application1/presentation/account_info_two_screen/account_info_two_screen.dart';
import 'package:dhyanesh_s_application1/presentation/account_info_four_screen/account_info_four_screen.dart';
import 'package:dhyanesh_s_application1/presentation/account_info_screen/account_info_screen.dart';
import 'package:dhyanesh_s_application1/presentation/account_info_three_screen/account_info_three_screen.dart';
import 'package:dhyanesh_s_application1/presentation/undraw_access_account_re_8spm_one_screen/undraw_access_account_re_8spm_one_screen.dart';
import 'package:dhyanesh_s_application1/presentation/medicines_tab_container_screen/medicines_tab_container_screen.dart';
import 'package:dhyanesh_s_application1/presentation/home_page_screen/home_page_screen.dart';
import 'package:dhyanesh_s_application1/presentation/list_of_doctors_screen/list_of_doctors_screen.dart';
import 'package:dhyanesh_s_application1/presentation/appointment_one_tab_container_screen/appointment_one_tab_container_screen.dart';
import 'package:dhyanesh_s_application1/presentation/appointment_screen/appointment_screen.dart';
import 'package:dhyanesh_s_application1/presentation/payment_screen/payment_screen.dart';
import 'package:dhyanesh_s_application1/presentation/my_appointments_tab_container_screen/my_appointments_tab_container_screen.dart';
import 'package:dhyanesh_s_application1/presentation/account_info_five_screen/account_info_five_screen.dart';
import 'package:dhyanesh_s_application1/presentation/video_call_screen/video_call_screen.dart';
import 'package:dhyanesh_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String accountInfoOneScreen = '/account_info_one_screen';

  static const String logInAsScreen = '/log_in_as_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String accountInfoTwoScreen = '/account_info_two_screen';

  static const String accountInfoFourScreen = '/account_info_four_screen';

  static const String accountInfoScreen = '/account_info_screen';

  static const String accountInfoThreeScreen = '/account_info_three_screen';

  static const String undrawAccessAccountRe8spmOneScreen =
      '/undraw_access_account_re_8spm_one_screen';

  static const String medicinesPage = '/medicines_page';

  static const String medicinesTabContainerScreen =
      '/medicines_tab_container_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String listOfDoctorsScreen = '/list_of_doctors_screen';

  static const String appointmentOnePage = '/appointment_one_page';

  static const String appointmentOneTabContainerScreen =
      '/appointment_one_tab_container_screen';

  static const String appointmentScreen = '/appointment_screen';

  static const String paymentScreen = '/payment_screen';

  static const String myAppointmentsPage = '/my_appointments_page';

  static const String myAppointmentsTabContainerScreen =
      '/my_appointments_tab_container_screen';

  static const String accountInfoFiveScreen = '/account_info_five_screen';

  static const String videoCallScreen = '/video_call_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    accountInfoOneScreen: (context) => AccountInfoOneScreen(),
    logInAsScreen: (context) => LogInAsScreen(),
    logInScreen: (context) => LogInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    accountInfoTwoScreen: (context) => AccountInfoTwoScreen(),
    accountInfoFourScreen: (context) => AccountInfoFourScreen(),
    accountInfoScreen: (context) => AccountInfoScreen(),
    accountInfoThreeScreen: (context) => AccountInfoThreeScreen(),
    undrawAccessAccountRe8spmOneScreen: (context) =>
        UndrawAccessAccountRe8spmOneScreen(),
    medicinesTabContainerScreen: (context) => MedicinesTabContainerScreen(),
    homePageScreen: (context) => HomePageScreen(),
    listOfDoctorsScreen: (context) => ListOfDoctorsScreen(),
    appointmentOneTabContainerScreen: (context) =>
        AppointmentOneTabContainerScreen(),
    appointmentScreen: (context) => AppointmentScreen(),
    paymentScreen: (context) => PaymentScreen(),
    myAppointmentsTabContainerScreen: (context) =>
        MyAppointmentsTabContainerScreen(),
    accountInfoFiveScreen: (context) => AccountInfoFiveScreen(),
    videoCallScreen: (context) => VideoCallScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
