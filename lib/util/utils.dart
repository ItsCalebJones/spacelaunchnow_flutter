import 'dart:io';

class Utils {

  static String getStatus(int status){
    String missionStatus = "Unknown";
    switch(status) {

      case 1: {
        //statements;
        missionStatus = "Launch is GO";
      }
      break;

      case 2: {
        //statements;
        missionStatus = "Launch is NO-GO";
      }
      break;

      case 3: {
        //statements;
        missionStatus = "Launch was Successful";
      }
      break;

      case 4: {
        //statements;
        missionStatus = "Launch Failure";
      }
      break;

      case 5: {
        //statements;
        missionStatus = "Unplanned Hold";
      }
      break;

      case 6: {
        //statements;
        missionStatus = "In Flight";
      }
      break;

      case 7: {
        //statements;
        missionStatus = "Partial Failure";
      }
      break;

      default: {
        //statements;
        missionStatus = "Unknown";
      }
      break;
    }

    return missionStatus;
  }

  static String getAppId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544~1458002511';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544~1458002511';
    }
    return null;
  }

  static String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

  static bool get isInDebugMode {
    bool inDebugMode = false;
    assert(inDebugMode = true);
    return inDebugMode;
  }
}