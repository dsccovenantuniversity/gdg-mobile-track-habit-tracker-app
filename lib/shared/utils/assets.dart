extension ImageExtension on String {
  String get png => 'assets/pngs/$this.png';
  String get svg => 'assets/svgs/$this.svg';
  String get json => 'assets/jsons/$this.json';
}
