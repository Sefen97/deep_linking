import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class HelperClass {
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  HelperClass();

  Future<String> createDynamicLink(
      {required int id,
      required String cityName,
      required String propertyCode,
      required String unitNumber}) async {
    DynamicLinkParameters parameters = DynamicLinkParameters(
        uriPrefix: 'https://rimsugptest.page.link',
        link: Uri.parse(
            'https://www.google.com?screen=/unitDetails&id=$id&cityName=$cityName&propertyCode=$propertyCode&unitNumber=$unitNumber'),
        androidParameters: const AndroidParameters(
          packageName: "com.gulftech.remis",
        ),
        iosParameters:
           const  IOSParameters(bundleId: "com.gulftech.remis", minimumVersion: "0"));
    final ShortDynamicLink shortLink =
        await dynamicLinks.buildShortLink(parameters);
    var shortUrl = shortLink.shortUrl;

    return shortUrl.toString();
  }
}
