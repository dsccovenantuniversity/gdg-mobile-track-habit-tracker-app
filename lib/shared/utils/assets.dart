//png
String signInPicture = 'sign_in_picture'.png;
String google = "Google".png;
String registerInPicture = 'register_picture'.png;

//svg

// String google = "Google".svg;

extension ImageExtension on String {
  String get png => 'assets/png/$this.png';
  String get svg => 'assets/svg/$this.svg';
  String get json => 'assets/json/$this.json';
}
