import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UploadLogoCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? category = '/',
    String? product = '/',
    String? brand = '/',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'upload logo',
      apiUrl: 'https://100091.pythonanywhere.com/upload-logo/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
        'category': category,
        'product': product,
        'brand': brand,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserAddReviewCall {
  static Future<ApiCallResponse> call({
    String? category = '/',
    String? product = '/',
    String? brand = '/',
    String? username = '',
    String? feedback = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'user add review',
      apiUrl: 'https://100091.pythonanywhere.com/user-review/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'category': category,
        'product': product,
        'brand': brand,
        'username': username,
        'feedback': feedback,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AdminUploadLogoCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? category = '/',
    String? product = '/',
    String? brand = '/',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'admin upload logo',
      apiUrl: 'https://100091.pythonanywhere.com/upload-logo/admin/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
        'category': category,
        'product': product,
        'brand': brand,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DropdownMenuDataCall {
  static Future<ApiCallResponse> call({
    String? category = '',
    String? product = '',
    String? brand = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'dropdown menu data',
      apiUrl: 'https://100091.pythonanywhere.com/dropdown-menu-data/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'product': product,
        'brand': brand,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetReviewsCall {
  static Future<ApiCallResponse> call({
    String? imageUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'get reviews',
      apiUrl: 'https://100091.pythonanywhere.com/reviews/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'image_url': imageUrl,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AdminLoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'admin login',
      apiUrl: 'https://100091.pythonanywhere.com/upload-logo/admin/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
