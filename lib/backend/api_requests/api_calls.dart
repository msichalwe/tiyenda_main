import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Events Group Code

class EventsGroup {
  static String baseUrl = 'https://events-platform-ashy.vercel.app/api/';
  static Map<String, String> headers = {
    'Content-type': 'application/json',
  };
  static GetAllEventsCall getAllEventsCall = GetAllEventsCall();
}

class GetAllEventsCall {
  Future<ApiCallResponse> call({
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllEvents',
      apiUrl: '${EventsGroup.baseUrl}/events',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].createdAt''',
        true,
      );
  dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updatedAt''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      );
  dynamic startDate(dynamic response) => getJsonField(
        response,
        r'''$[:].startDate''',
        true,
      );
  dynamic endDate(dynamic response) => getJsonField(
        response,
        r'''$[:].endDate''',
        true,
      );
  dynamic startTime(dynamic response) => getJsonField(
        response,
        r'''$[:].startTime''',
        true,
      );
  dynamic endTime(dynamic response) => getJsonField(
        response,
        r'''$[:].endTime''',
        true,
      );
  dynamic location(dynamic response) => getJsonField(
        response,
        r'''$[:].location''',
        true,
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$[:].address''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
  dynamic organizerId(dynamic response) => getJsonField(
        response,
        r'''$[:].organizerId''',
        true,
      );
  dynamic ticketLimit(dynamic response) => getJsonField(
        response,
        r'''$[:].ticketLimit''',
        true,
      );
  dynamic assets(dynamic response) => getJsonField(
        response,
        r'''$[:].assets''',
        true,
      );
  dynamic isPublished(dynamic response) => getJsonField(
        response,
        r'''$[:].isPublished''',
        true,
      );
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].Category''',
        true,
      );
  dynamic categoryId(dynamic response) => getJsonField(
        response,
        r'''$[:].Category.id''',
        true,
      );
  dynamic categoryName(dynamic response) => getJsonField(
        response,
        r'''$[:].Category.name''',
        true,
      );
  dynamic categoryDesc(dynamic response) => getJsonField(
        response,
        r'''$[:].Category.description''',
        true,
      );
  dynamic organizerName(dynamic response) => getJsonField(
        response,
        r'''$[:].organizer.name''',
        true,
      );
  dynamic organizerDescription(dynamic response) => getJsonField(
        response,
        r'''$[:].organizer.description''',
        true,
      );
}

/// End Events Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
