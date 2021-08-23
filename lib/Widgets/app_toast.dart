import 'package:flutter/cupertino.dart';
import 'package:fluttertoastalert/FlutterToastAlert.dart';

class ApplicationToast {
  static getErrorToast(
      {required int durationTime,
      required String heading,
      required String subHeading}) async {
    await FlutterToastAlert.showToastAndAlert(
      toastDuration: durationTime,
      toastShowIcon: true,
      type: Type.Error,
      androidToast: subHeading,
      iosTitle: heading,
      iosSubtitle: subHeading,
    );
  }

  static getSuccessToast(
      {required int durationTime,
      required String heading,
      required String subHeading}) async {
    await FlutterToastAlert.showToastAndAlert(
      toastDuration: durationTime,
      toastShowIcon: true,
      type: Type.Success,
      androidToast: subHeading,
      iosTitle: heading,
      iosSubtitle: subHeading,
    );
  }

  static getWarningToast(
      {required int durationTime,
      required String heading,
      required String subHeading}) async {
    await FlutterToastAlert.showToastAndAlert(
      toastDuration: durationTime,
      toastShowIcon: true,
      type: Type.Warning,
      androidToast: subHeading,
      iosTitle: heading,
      iosSubtitle: subHeading,
    );
  }
}
