class Departments {
  final String _departmentName;
  final String _departmentDetail;
  final String _departmentImage;

  get departmentName => _departmentName;
  get departmentDetail => _departmentDetail;
  get departmentImage => _departmentImage;

  Departments(
      this._departmentName, this._departmentDetail, this._departmentImage);

  @override
  String toString() {
    return '$_departmentName - $_departmentImage';
  }
}
