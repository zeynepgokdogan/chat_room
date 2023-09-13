class Departments {
  final String _departmentName;
  final String _departmentDetail;
  final String _departmentImage;

  get DepartmentName => this._departmentName;
  get DepartmentDetail => this._departmentDetail;
  get DepartmentImage => this._departmentImage;

  Departments(
      this._departmentName, this._departmentDetail, this._departmentImage);

  @override
  String toString() {
    return '$_departmentName - $_departmentImage';
  }
}
