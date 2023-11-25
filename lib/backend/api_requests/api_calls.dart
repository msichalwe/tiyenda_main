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
  static GetAllEventsFeaturedCall getAllEventsFeaturedCall =
      GetAllEventsFeaturedCall();
  static GetSingleEventsCall getSingleEventsCall = GetSingleEventsCall();
  static GetEventTicketsCall getEventTicketsCall = GetEventTicketsCall();
  static FollowOrganizerCall followOrganizerCall = FollowOrganizerCall();
  static UnfollowOrganizerCall unfollowOrganizerCall = UnfollowOrganizerCall();
  static GetAllCategoriesCall getAllCategoriesCall = GetAllCategoriesCall();
  static GetCategoryEventsCall getCategoryEventsCall = GetCategoryEventsCall();
  static CreateUserMongoCall createUserMongoCall = CreateUserMongoCall();
  static GetMongoUserCall getMongoUserCall = GetMongoUserCall();
  static GetAllOrganizersCall getAllOrganizersCall = GetAllOrganizersCall();
  static GetOneOrganizerCall getOneOrganizerCall = GetOneOrganizerCall();
}

class GetAllEventsCall {
  Future<ApiCallResponse> call({
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllEvents',
      apiUrl: '${EventsGroup.baseUrl}events',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
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

class GetAllEventsFeaturedCall {
  Future<ApiCallResponse> call({
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllEventsFeatured',
      apiUrl: '${EventsGroup.baseUrl}events/featured',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
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

class GetSingleEventsCall {
  Future<ApiCallResponse> call({
    String? eventId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getSingleEvents',
      apiUrl: '${EventsGroup.baseUrl}/events/$eventId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class GetEventTicketsCall {
  Future<ApiCallResponse> call({
    String? eventId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getEventTickets',
      apiUrl: '${EventsGroup.baseUrl}/tickets/$eventId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class FollowOrganizerCall {
  Future<ApiCallResponse> call({
    String? organizerId = '',
    String? userId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);
    final ffApiRequestBody = '''
{
  "userId": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'followOrganizer',
      apiUrl: '${EventsGroup.baseUrl}/follow/$organizerId',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UnfollowOrganizerCall {
  Future<ApiCallResponse> call({
    String? organizerId = '',
    String? userId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'unfollowOrganizer',
      apiUrl: '${EventsGroup.baseUrl}/follow/$organizerId',
      callType: ApiCallType.DELETE,
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
}

class GetAllCategoriesCall {
  Future<ApiCallResponse> call({
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllCategories',
      apiUrl: '${EventsGroup.baseUrl}/categories',
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
  dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$[:].imageUrl''',
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
}

class GetCategoryEventsCall {
  Future<ApiCallResponse> call({
    String? categoryId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getCategoryEvents',
      apiUrl: '${EventsGroup.baseUrl}/events/category/$categoryId',
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
}

class CreateUserMongoCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? userId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);
    final ffApiRequestBody = '''
{
  "email": "$email",
  "name": "$name",
  "fireBaseId": "<fireBaseId>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUserMongo',
      apiUrl: '${EventsGroup.baseUrl}user',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic mongoID(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class GetMongoUserCall {
  Future<ApiCallResponse> call({
    String? firebaseId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getMongoUser',
      apiUrl: '${EventsGroup.baseUrl}/user/$firebaseId',
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
}

class GetAllOrganizersCall {
  Future<ApiCallResponse> call({
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllOrganizers',
      apiUrl: '${EventsGroup.baseUrl}/organizer',
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

  dynamic events(dynamic response) => getJsonField(
        response,
        r'''$[:].events''',
        true,
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].createdAt''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
}

class GetOneOrganizerCall {
  Future<ApiCallResponse> call({
    String? organizerId = '',
    dynamic eventsJson,
  }) async {
    final events = _serializeJson(eventsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'getOneOrganizer',
      apiUrl: '${EventsGroup.baseUrl}/organizer/$organizerId',
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
