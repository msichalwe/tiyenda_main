import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Events Group Code

class EventsGroup {
  static GetAllEventsCall getAllEventsCall = GetAllEventsCall();
}

class GetAllEventsCall {
  Future<ApiCallResponse> call({
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAllEventsCall',
        'variables': {
          'events': events,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].createdAt''',
      );
  dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updatedAt''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
      );
  dynamic startDate(dynamic response) => getJsonField(
        response,
        r'''$[:].startDate''',
      );
  dynamic endDate(dynamic response) => getJsonField(
        response,
        r'''$[:].endDate''',
      );
  dynamic startTime(dynamic response) => getJsonField(
        response,
        r'''$[:].startTime''',
      );
  dynamic endTime(dynamic response) => getJsonField(
        response,
        r'''$[:].endTime''',
      );
  dynamic location(dynamic response) => getJsonField(
        response,
        r'''$[:].location''',
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$[:].address''',
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
      );
  dynamic organizerId(dynamic response) => getJsonField(
        response,
        r'''$[:].organizerId''',
      );
  dynamic ticketLimit(dynamic response) => getJsonField(
        response,
        r'''$[:].ticketLimit''',
      );
  dynamic assets(dynamic response) => getJsonField(
        response,
        r'''$[:].assets''',
        true,
      );
  dynamic isPublished(dynamic response) => getJsonField(
        response,
        r'''$[:].isPublished''',
      );
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].Category''',
      );
  dynamic categoryId(dynamic response) => getJsonField(
        response,
        r'''$[:].Category.id''',
      );
  dynamic categoryName(dynamic response) => getJsonField(
        response,
        r'''$[:].Category.name''',
      );
  dynamic categoryDesc(dynamic response) => getJsonField(
        response,
        r'''$[:].Category.description''',
      );
  dynamic organizerName(dynamic response) => getJsonField(
        response,
        r'''$[:].organizer.name''',
      );
  dynamic organizerDescription(dynamic response) => getJsonField(
        response,
        r'''$[:].organizer.description''',
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
