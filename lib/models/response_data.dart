class ResponseData {
  final bool isSuccess;
  final int statusCode;
  final String errorMessage;
  final dynamic response;

  ResponseData(
      {required this.isSuccess,
      required this.statusCode,
      this.errorMessage = 'Something went wrong',
      required this.response});
}
