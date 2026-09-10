// This is a generated file - do not edit.
//
// Generated from package.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? login,
    $core.String? password,
  }) {
    final result = create();
    if (login != null) result.login = login;
    if (password != null) result.password = password;
    return result;
  }

  User._();

  factory User.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory User.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'login')
    ..aQS(2, _omitFieldNames ? '' : 'password');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  @$core.override
  User createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

class Movie extends $pb.GeneratedMessage {
  factory Movie({
    $core.String? id,
    $core.String? title,
    $core.String? genre,
    $core.double? price,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (genre != null) result.genre = genre;
    if (price != null) result.price = price;
    return result;
  }

  Movie._();

  factory Movie.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Movie.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Movie',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'genre')
    ..aD(4, _omitFieldNames ? '' : 'price', fieldType: $pb.PbFieldType.QD);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Movie clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Movie copyWith(void Function(Movie) updates) =>
      super.copyWith((message) => updates(message as Movie)) as Movie;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Movie create() => Movie._();
  @$core.override
  Movie createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Movie getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Movie>(create);
  static Movie? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get genre => $_getSZ(2);
  @$pb.TagNumber(3)
  set genre($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGenre() => $_has(2);
  @$pb.TagNumber(3)
  void clearGenre() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => $_clearField(4);
}

class Rental extends $pb.GeneratedMessage {
  factory Rental({
    $core.String? id,
    $core.String? userLogin,
    $core.String? movieId,
    $core.String? rentalDate,
    $core.String? returnDate,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userLogin != null) result.userLogin = userLogin;
    if (movieId != null) result.movieId = movieId;
    if (rentalDate != null) result.rentalDate = rentalDate;
    if (returnDate != null) result.returnDate = returnDate;
    return result;
  }

  Rental._();

  factory Rental.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rental.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Rental',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'userLogin')
    ..aQS(3, _omitFieldNames ? '' : 'movieId')
    ..aOS(4, _omitFieldNames ? '' : 'rentalDate')
    ..aOS(5, _omitFieldNames ? '' : 'returnDate');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rental clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rental copyWith(void Function(Rental) updates) =>
      super.copyWith((message) => updates(message as Rental)) as Rental;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rental create() => Rental._();
  @$core.override
  Rental createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Rental getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rental>(create);
  static Rental? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userLogin => $_getSZ(1);
  @$pb.TagNumber(2)
  set userLogin($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserLogin() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserLogin() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get movieId => $_getSZ(2);
  @$pb.TagNumber(3)
  set movieId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMovieId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMovieId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get rentalDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set rentalDate($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRentalDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearRentalDate() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get returnDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set returnDate($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReturnDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearReturnDate() => $_clearField(5);
}

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? login,
    $core.String? senha,
  }) {
    final result = create();
    if (login != null) result.login = login;
    if (senha != null) result.senha = senha;
    return result;
  }

  LoginRequest._();

  factory LoginRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LoginRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginRequest',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'login')
    ..aQS(2, _omitFieldNames ? '' : 'senha');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginRequest copyWith(void Function(LoginRequest) updates) =>
      super.copyWith((message) => updates(message as LoginRequest))
          as LoginRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  @$core.override
  LoginRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get senha => $_getSZ(1);
  @$pb.TagNumber(2)
  set senha($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSenha() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenha() => $_clearField(2);
}

class LoginResponse extends $pb.GeneratedMessage {
  factory LoginResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    return result;
  }

  LoginResponse._();

  factory LoginResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LoginResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginResponse',
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'success', $pb.PbFieldType.QB)
    ..aQS(2, _omitFieldNames ? '' : 'message');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginResponse copyWith(void Function(LoginResponse) updates) =>
      super.copyWith((message) => updates(message as LoginResponse))
          as LoginResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  @$core.override
  LoginResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class MovieRequest extends $pb.GeneratedMessage {
  factory MovieRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  MovieRequest._();

  factory MovieRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MovieRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MovieRequest',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MovieRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MovieRequest copyWith(void Function(MovieRequest) updates) =>
      super.copyWith((message) => updates(message as MovieRequest))
          as MovieRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MovieRequest create() => MovieRequest._();
  @$core.override
  MovieRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MovieRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MovieRequest>(create);
  static MovieRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class RentalRequest extends $pb.GeneratedMessage {
  factory RentalRequest({
    $core.String? userLogin,
    $core.String? movieId,
  }) {
    final result = create();
    if (userLogin != null) result.userLogin = userLogin;
    if (movieId != null) result.movieId = movieId;
    return result;
  }

  RentalRequest._();

  factory RentalRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RentalRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RentalRequest',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'userLogin')
    ..aQS(2, _omitFieldNames ? '' : 'movieId');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RentalRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RentalRequest copyWith(void Function(RentalRequest) updates) =>
      super.copyWith((message) => updates(message as RentalRequest))
          as RentalRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RentalRequest create() => RentalRequest._();
  @$core.override
  RentalRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RentalRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RentalRequest>(create);
  static RentalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userLogin => $_getSZ(0);
  @$pb.TagNumber(1)
  set userLogin($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserLogin() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get movieId => $_getSZ(1);
  @$pb.TagNumber(2)
  set movieId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMovieId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMovieId() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
