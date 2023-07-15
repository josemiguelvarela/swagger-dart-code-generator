// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'overriden_models.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart' as chopper;
import 'pet_service_swagger.enums.swagger.dart' as enums;
export 'pet_service_swagger.enums.swagger.dart';

part 'pet_service_swagger.swagger.chopper.dart';
part 'pet_service_swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class PetServiceSwagger extends ChopperService {
  static PetServiceSwagger create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$PetServiceSwagger(client);
    }

    final newClient = ChopperClient(
        services: [_$PetServiceSwagger()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://petstore.swagger.io/v2'));
    return _$PetServiceSwagger(newClient);
  }

  ///Add a new pet to the store
  ///@param body Pet object that needs to be added to the store
  Future<chopper.Response> petPost({
    required Pet? body,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petPost(body: body, cacheControl: cacheControl);
  }

  ///Add a new pet to the store
  ///@param body Pet object that needs to be added to the store
  @Post(path: '/pet')
  Future<chopper.Response> _petPost({
    @Body() required Pet? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Update an existing pet
  ///@param body Pet object that needs to be added to the store
  Future<chopper.Response> petPut({
    required Pet? body,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petPut(body: body, cacheControl: cacheControl);
  }

  ///Update an existing pet
  ///@param body Pet object that needs to be added to the store
  @Put(path: '/pet')
  Future<chopper.Response> _petPut({
    @Body() required Pet? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Finds Pets by status
  ///@param status Status values that need to be considered for filter
  Future<chopper.Response<List<Pet>>> petFindByStatusGet({
    required enums.PetFindByStatusGetStatus? status,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petFindByStatusGet(
        status: status?.value?.toString(), cacheControl: cacheControl);
  }

  ///Finds Pets by status
  ///@param status Status values that need to be considered for filter
  @Get(path: '/pet/findByStatus')
  Future<chopper.Response<List<Pet>>> _petFindByStatusGet({
    @Query('status') required String? status,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Finds Pets by tags
  ///@param tags Tags to filter by
  Future<chopper.Response<List<Pet>>> petFindByTagsGet({
    required List<String>? tags,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petFindByTagsGet(tags: tags, cacheControl: cacheControl);
  }

  ///Finds Pets by tags
  ///@param tags Tags to filter by
  @Get(path: '/pet/findByTags')
  Future<chopper.Response<List<Pet>>> _petFindByTagsGet({
    @Query('tags') required List<String>? tags,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Find pet by ID
  ///@param petId ID of pet to return
  Future<chopper.Response<Pet>> petPetIdGet({
    required int? petId,
    ApiKey? apiKey,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petPetIdGet(
        petId: petId, apiKey: apiKey, cacheControl: cacheControl);
  }

  ///Find pet by ID
  ///@param petId ID of pet to return
  @Get(path: '/pet/{petId}')
  Future<chopper.Response<Pet>> _petPetIdGet({
    @Path('petId') required int? petId,
    @Header('api_key') ApiKey? apiKey,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Updated name of the pet
  ///@param status Updated status of the pet
  Future<chopper.Response> petPetIdPost({
    required int? petId,
    String? name,
    String? status,
    String? cacheControl,
  }) {
    return _petPetIdPost(
        petId: petId, name: name, status: status, cacheControl: cacheControl);
  }

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Updated name of the pet
  ///@param status Updated status of the pet
  @Post(
    path: '/pet/{petId}',
    optionalBody: true,
  )
  Future<chopper.Response> _petPetIdPost({
    @Path('petId') required int? petId,
    @Field('name') String? name,
    @Field('status') String? status,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  Future<chopper.Response> petPetIdDelete({
    String? apiKey,
    required int? petId,
    String? cacheControl,
  }) {
    return _petPetIdDelete(
        apiKey: apiKey, petId: petId, cacheControl: cacheControl);
  }

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  @Delete(path: '/pet/{petId}')
  Future<chopper.Response> _petPetIdDelete({
    @Header('api_key') String? apiKey,
    @Path('petId') required int? petId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///uploads an image
  ///@param petId ID of pet to update
  ///@param additionalMetadata Additional data to pass to server
  ///@param file file to upload
  Future<chopper.Response<ApiResponse>> petPetIdUploadImagePost({
    required int? petId,
    String? additionalMetadata,
    List<int>? file,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _petPetIdUploadImagePost(
        petId: petId,
        additionalMetadata: additionalMetadata,
        file: file,
        cacheControl: cacheControl);
  }

  ///uploads an image
  ///@param petId ID of pet to update
  ///@param additionalMetadata Additional data to pass to server
  ///@param file file to upload
  @Post(
    path: '/pet/{petId}/uploadImage',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResponse>> _petPetIdUploadImagePost({
    @Path('petId') required int? petId,
    @Field('additionalMetadata') String? additionalMetadata,
    @Field('file') List<int>? file,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Returns pet inventories by status
  Future<chopper.Response<Object>> storeInventoryGet({
    ApiKey? apiKey,
    String? cacheControl,
  }) {
    return _storeInventoryGet(apiKey: apiKey, cacheControl: cacheControl);
  }

  ///Returns pet inventories by status
  @Get(path: '/store/inventory')
  Future<chopper.Response<Object>> _storeInventoryGet({
    @Header('api_key') ApiKey? apiKey,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Place an order for a pet
  ///@param body order placed for purchasing the pet
  Future<chopper.Response<Order>> storeOrderPost({
    required Order? body,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Order, () => Order.fromJsonFactory);

    return _storeOrderPost(body: body, cacheControl: cacheControl);
  }

  ///Place an order for a pet
  ///@param body order placed for purchasing the pet
  @Post(path: '/store/order')
  Future<chopper.Response<Order>> _storeOrderPost({
    @Body() required Order? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Find purchase order by ID
  ///@param orderId ID of pet that needs to be fetched
  Future<chopper.Response<Order>> storeOrderOrderIdGet({
    required int? orderId,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Order, () => Order.fromJsonFactory);

    return _storeOrderOrderIdGet(orderId: orderId, cacheControl: cacheControl);
  }

  ///Find purchase order by ID
  ///@param orderId ID of pet that needs to be fetched
  @Get(path: '/store/order/{orderId}')
  Future<chopper.Response<Order>> _storeOrderOrderIdGet({
    @Path('orderId') required int? orderId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Delete purchase order by ID
  ///@param orderId ID of the order that needs to be deleted
  Future<chopper.Response> storeOrderOrderIdDelete({
    required int? orderId,
    String? cacheControl,
  }) {
    return _storeOrderOrderIdDelete(
        orderId: orderId, cacheControl: cacheControl);
  }

  ///Delete purchase order by ID
  ///@param orderId ID of the order that needs to be deleted
  @Delete(path: '/store/order/{orderId}')
  Future<chopper.Response> _storeOrderOrderIdDelete({
    @Path('orderId') required int? orderId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Create user
  ///@param body Created user object
  Future<chopper.Response> userPost({
    required User? body,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userPost(body: body, cacheControl: cacheControl);
  }

  ///Create user
  ///@param body Created user object
  @Post(path: '/user')
  Future<chopper.Response> _userPost({
    @Body() required User? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Creates list of users with given input array
  ///@param body List of user object
  Future<chopper.Response> userCreateWithArrayPost({
    required List<User>? body,
    String? cacheControl,
  }) {
    return _userCreateWithArrayPost(body: body, cacheControl: cacheControl);
  }

  ///Creates list of users with given input array
  ///@param body List of user object
  @Post(path: '/user/createWithArray')
  Future<chopper.Response> _userCreateWithArrayPost({
    @Body() required List<User>? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Creates list of users with given input array
  ///@param body List of user object
  Future<chopper.Response> userCreateWithListPost({
    required List<User>? body,
    String? cacheControl,
  }) {
    return _userCreateWithListPost(body: body, cacheControl: cacheControl);
  }

  ///Creates list of users with given input array
  ///@param body List of user object
  @Post(path: '/user/createWithList')
  Future<chopper.Response> _userCreateWithListPost({
    @Body() required List<User>? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  Future<chopper.Response<String>> userLoginGet({
    required String? username,
    required String? password,
    String? cacheControl,
  }) {
    return _userLoginGet(
        username: username, password: password, cacheControl: cacheControl);
  }

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  @Get(path: '/user/login')
  Future<chopper.Response<String>> _userLoginGet({
    @Query('username') required String? username,
    @Query('password') required String? password,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Logs out current logged in user session
  Future<chopper.Response> userLogoutGet({String? cacheControl}) {
    return _userLogoutGet(cacheControl: cacheControl);
  }

  ///Logs out current logged in user session
  @Get(path: '/user/logout')
  Future<chopper.Response> _userLogoutGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  Future<chopper.Response<User>> userUsernameGet({
    required String? username,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userUsernameGet(username: username, cacheControl: cacheControl);
  }

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  @Get(path: '/user/{username}')
  Future<chopper.Response<User>> _userUsernameGet({
    @Path('username') required String? username,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Updated user
  ///@param username name that need to be updated
  ///@param body Updated user object
  Future<chopper.Response> userUsernamePut({
    required String? username,
    required User? body,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userUsernamePut(
        username: username, body: body, cacheControl: cacheControl);
  }

  ///Updated user
  ///@param username name that need to be updated
  ///@param body Updated user object
  @Put(path: '/user/{username}')
  Future<chopper.Response> _userUsernamePut({
    @Path('username') required String? username,
    @Body() required User? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Delete user
  ///@param username The name that needs to be deleted
  Future<chopper.Response> userUsernameDelete({
    required String? username,
    String? cacheControl,
  }) {
    return _userUsernameDelete(username: username, cacheControl: cacheControl);
  }

  ///Delete user
  ///@param username The name that needs to be deleted
  @Delete(path: '/user/{username}')
  Future<chopper.Response> _userUsernameDelete({
    @Path('username') required String? username,
    @Header('Cache-Control') String? cacheControl,
  });
}

@JsonSerializable(explicitToJson: true)
class Category {
  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  static const toJsonFactory = _$CategoryToJson;
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  String? name;
  static const fromJsonFactory = _$CategoryFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.userStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  String? username;
  @JsonKey(name: 'firstName', includeIfNull: false, defaultValue: '')
  String? firstName;
  @JsonKey(name: 'lastName', includeIfNull: false, defaultValue: '')
  String? lastName;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  String? email;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  String? password;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  String? phone;
  @JsonKey(name: 'userStatus', includeIfNull: false)
  int? userStatus;
  static const fromJsonFactory = _$UserFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class Tag {
  Tag({
    this.id,
    this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  static const toJsonFactory = _$TagToJson;
  Map<String, dynamic> toJson() => _$TagToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  String? name;
  static const fromJsonFactory = _$TagFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class Pet {
  Pet({
    this.id,
    this.category,
    this.name,
    this.photoUrls,
    this.tags,
    this.status,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  static const toJsonFactory = _$PetToJson;
  Map<String, dynamic> toJson() => _$PetToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'category', includeIfNull: false)
  Category? category;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  String? name;
  @JsonKey(name: 'photoUrls', includeIfNull: false)
  List<String>? photoUrls;
  @JsonKey(name: 'tags', includeIfNull: false)
  List<Tag>? tags;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: petStatusToJson,
    fromJson: petStatusFromJson,
  )
  enums.PetStatus? status;
  static const fromJsonFactory = _$PetFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ApiResponse {
  ApiResponse({
    this.code,
    this.type,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  static const toJsonFactory = _$ApiResponseToJson;
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  @JsonKey(name: 'code', includeIfNull: false)
  int? code;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  String? type;
  @JsonKey(name: 'message', includeIfNull: false, defaultValue: '')
  String? message;
  static const fromJsonFactory = _$ApiResponseFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

String? orderStatusToJson(enums.OrderStatus? orderStatus) {
  return orderStatus?.value;
}

enums.OrderStatus orderStatusFromJson(
  Object? orderStatus, [
  enums.OrderStatus? defaultValue,
]) {
  return enums.OrderStatus.values
          .firstWhereOrNull((e) => e.value == orderStatus) ??
      defaultValue ??
      enums.OrderStatus.swaggerGeneratedUnknown;
}

List<String> orderStatusListToJson(List<enums.OrderStatus>? orderStatus) {
  if (orderStatus == null) {
    return [];
  }

  return orderStatus.map((e) => e.value!).toList();
}

List<enums.OrderStatus> orderStatusListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue ?? [];
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

List<enums.OrderStatus>? orderStatusNullableListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue;
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

String? petStatusToJson(enums.PetStatus? petStatus) {
  return petStatus?.value;
}

enums.PetStatus petStatusFromJson(
  Object? petStatus, [
  enums.PetStatus? defaultValue,
]) {
  return enums.PetStatus.values.firstWhereOrNull((e) => e.value == petStatus) ??
      defaultValue ??
      enums.PetStatus.swaggerGeneratedUnknown;
}

List<String> petStatusListToJson(List<enums.PetStatus>? petStatus) {
  if (petStatus == null) {
    return [];
  }

  return petStatus.map((e) => e.value!).toList();
}

List<enums.PetStatus> petStatusListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue ?? [];
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

List<enums.PetStatus>? petStatusNullableListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue;
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

String? petFindByStatusGetStatusToJson(
    enums.PetFindByStatusGetStatus? petFindByStatusGetStatus) {
  return petFindByStatusGetStatus?.value;
}

enums.PetFindByStatusGetStatus petFindByStatusGetStatusFromJson(
  Object? petFindByStatusGetStatus, [
  enums.PetFindByStatusGetStatus? defaultValue,
]) {
  return enums.PetFindByStatusGetStatus.values
          .firstWhereOrNull((e) => e.value == petFindByStatusGetStatus) ??
      defaultValue ??
      enums.PetFindByStatusGetStatus.swaggerGeneratedUnknown;
}

List<String> petFindByStatusGetStatusListToJson(
    List<enums.PetFindByStatusGetStatus>? petFindByStatusGetStatus) {
  if (petFindByStatusGetStatus == null) {
    return [];
  }

  return petFindByStatusGetStatus.map((e) => e.value!).toList();
}

List<enums.PetFindByStatusGetStatus> petFindByStatusGetStatusListFromJson(
  List? petFindByStatusGetStatus, [
  List<enums.PetFindByStatusGetStatus>? defaultValue,
]) {
  if (petFindByStatusGetStatus == null) {
    return defaultValue ?? [];
  }

  return petFindByStatusGetStatus
      .map((e) => petFindByStatusGetStatusFromJson(e.toString()))
      .toList();
}

List<enums.PetFindByStatusGetStatus>?
    petFindByStatusGetStatusNullableListFromJson(
  List? petFindByStatusGetStatus, [
  List<enums.PetFindByStatusGetStatus>? defaultValue,
]) {
  if (petFindByStatusGetStatus == null) {
    return defaultValue;
  }

  return petFindByStatusGetStatus
      .map((e) => petFindByStatusGetStatusFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
