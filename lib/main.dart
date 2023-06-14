import 'package:deep_linking/first_screen/first_screen.dart';
import 'package:deep_linking/second_screen/second_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final FirebaseDynamicLinks _dynamicLinks = FirebaseDynamicLinks.instance;

  @override
  void initState() {
    // _dynamicLinks.getInitialLink();
    // _initDynamicLinks();
    // OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.none);
    // OneSignal.shared.setAppId("4911e1af-dafc-4ebd-aede-fc1f9d211bde");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/secondScreen': (BuildContext context) => SecondScreen(),},
      initialRoute: '/',
      home: const FirstScreen(),
    );
  }

  // void _initDynamicLinks() async {
  //   _dynamicLinks.onLink.listen((dynamicLinkData) {
  //     final Uri depLink = dynamicLinkData.link;
  //     String id = depLink.queryParameters['id']!;
  //     String cityName = depLink.queryParameters['cityName']!;
  //     String propertyCode = depLink.queryParameters['propertyCode']!;
  //     String unitNumber = depLink.queryParameters['unitNumber']!;
  //     String screen = depLink.queryParameters['screen']!;
  //     if (screen.isNotEmpty) {
  //       // Navigator.push(
  //       //     context,
  //       //     MaterialPageRoute(
  //       //         builder: (_) => Test(
  //       //           propertyCode: propertyCode,
  //       //           cityName: cityName,
  //       //           unitNumber: unitNumber,
  //       //           id: int.parse(id),
  //       //         )));
  //     }
  //   }).onError((error) {});
  // }


  //create and share
//  void _shareUnit(
//       {required HelperClass helperClass,
//       required UnitDetailsModule unitDetailsModule}) {
//     helperClass
//         .createDynamicLink(
//             cityName: unitDetailsModule.cityName!,
//             id: unitDetailsModule.id!,
//             propertyCode: unitDetailsModule.propertyCode!,
//             unitNumber: unitDetailsModule.unitNumber!)
//         .then((value) {
//       return Share.share(value);
//     });
//   }
}


