class People {
  final String _peopleName;
  final String _peopleDetail;
  final String _peopleImage;

  get peopleName => _peopleName;
  get peopleDetail => _peopleDetail;
  get peopleImage => _peopleImage;

  People(
      this._peopleName, this._peopleDetail, this._peopleImage);

  @override
  String toString() {
    return '$_peopleName - $_peopleImage';
  }
}
