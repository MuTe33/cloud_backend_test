// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserApiProvider implements UserApiProvider {
  _UserApiProvider(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<UserResponseData> getUsers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('users',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponseData.fromJson(_result.data);
    return value;
  }
}
