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
  static EventsSearchCall eventsSearchCall = EventsSearchCall();
  static OrderTicketsCall orderTicketsCall = OrderTicketsCall();
  static CreateBackendUserCall createBackendUserCall = CreateBackendUserCall();
  static GetEventOrdersCall getEventOrdersCall = GetEventOrdersCall();
  static GetOrderTicketsCall getOrderTicketsCall = GetOrderTicketsCall();
}

class GetAllEventsCall {
  Future<ApiCallResponse> call() async {
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
      alwaysAllowBody: false,
    );
  }

  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? startDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].startDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? endDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].endDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? startTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].startTime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? endTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].endTime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? address(dynamic response) => (getJsonField(
        response,
        r'''$[:].address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? organizerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].organizerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? ticketLimit(dynamic response) => getJsonField(
        response,
        r'''$[:].ticketLimit''',
        true,
      ) as List?;
  List? assets(dynamic response) => getJsonField(
        response,
        r'''$[:].assets''',
        true,
      ) as List?;
}

class GetAllEventsFeaturedCall {
  Future<ApiCallResponse> call() async {
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
      alwaysAllowBody: false,
    );
  }
}

class GetSingleEventsCall {
  Future<ApiCallResponse> call({
    String? eventId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleEvents',
      apiUrl: '${EventsGroup.baseUrl}events/$eventId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class GetEventTicketsCall {
  Future<ApiCallResponse> call({
    String? eventId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEventTickets',
      apiUrl: '${EventsGroup.baseUrl}tickets/$eventId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class FollowOrganizerCall {
  Future<ApiCallResponse> call({
    String? organizerId = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'followOrganizer',
      apiUrl: '${EventsGroup.baseUrl}follow/$organizerId',
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
      alwaysAllowBody: false,
    );
  }
}

class UnfollowOrganizerCall {
  Future<ApiCallResponse> call({
    String? organizerId = '',
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'unfollowOrganizer',
      apiUrl: '${EventsGroup.baseUrl}follow/$organizerId',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCategoriesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllCategories',
      apiUrl: '${EventsGroup.baseUrl}categories',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
  List? description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?;
  List? imageUrl(dynamic response) => getJsonField(
        response,
        r'''$[:].imageUrl''',
        true,
      ) as List?;
  List? createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].createdAt''',
        true,
      ) as List?;
  List? updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updatedAt''',
        true,
      ) as List?;
}

class GetCategoryEventsCall {
  Future<ApiCallResponse> call({
    String? categoryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategoryEvents',
      apiUrl: '${EventsGroup.baseUrl}events/category/$categoryId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserMongoCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? userId = '',
  }) async {
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
      alwaysAllowBody: false,
    );
  }

  String? mongoID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetMongoUserCall {
  Future<ApiCallResponse> call({
    String? firebaseId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMongoUser',
      apiUrl: '${EventsGroup.baseUrl}user/$firebaseId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllOrganizersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllOrganizers',
      apiUrl: '${EventsGroup.baseUrl}organizer',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? events(dynamic response) => getJsonField(
        response,
        r'''$[:].events''',
        true,
      ) as List?;
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
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOneOrganizer',
      apiUrl: '${EventsGroup.baseUrl}organizer/$organizerId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EventsSearchCall {
  Future<ApiCallResponse> call({
    String? eventName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "query": "$eventName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'events Search',
      apiUrl: '${EventsGroup.baseUrl}events/search',
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
      alwaysAllowBody: false,
    );
  }
}

class OrderTicketsCall {
  Future<ApiCallResponse> call({
    dynamic ticketsJson,
    int? total,
    String? fireBaseId = '',
    String? eventId = '',
  }) async {
    final tickets = _serializeJson(ticketsJson, true);
    final ffApiRequestBody = '''
{
  "fireBaseId": "$fireBaseId",
  "eventId": "$eventId",
  "tickets": $tickets,
  "total": $total
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'orderTickets',
      apiUrl: '${EventsGroup.baseUrl}order',
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
      alwaysAllowBody: false,
    );
  }
}

class CreateBackendUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? firebaseId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "name": "$name",
  "userId": "$firebaseId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createBackendUser',
      apiUrl: '${EventsGroup.baseUrl}user',
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
      alwaysAllowBody: false,
    );
  }
}

class GetEventOrdersCall {
  Future<ApiCallResponse> call({
    String? firebaseId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEventOrders',
      apiUrl: '${EventsGroup.baseUrl}user/order/$firebaseId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? event(dynamic response) => getJsonField(
        response,
        r'''$[:].event''',
        true,
      ) as List?;
  List? orderItem(dynamic response) => getJsonField(
        response,
        r'''$[:].OrderItem''',
        true,
      ) as List?;
}

class GetOrderTicketsCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOrderTickets',
      apiUrl: '${EventsGroup.baseUrl}order/$orderId',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
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
