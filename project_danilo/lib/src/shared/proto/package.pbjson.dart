// This is a generated file - do not edit.
//
// Generated from package.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'login', '3': 1, '4': 2, '5': 9, '10': 'login'},
    {'1': 'password', '3': 2, '4': 2, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhQKBWxvZ2luGAEgAigJUgVsb2dpbhIaCghwYXNzd29yZBgCIAIoCVIIcGFzc3dvcm'
    'Q=');

@$core.Deprecated('Use movieDescriptor instead')
const Movie$json = {
  '1': 'Movie',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 2, '5': 9, '10': 'title'},
    {'1': 'genre', '3': 3, '4': 1, '5': 9, '10': 'genre'},
    {'1': 'price', '3': 4, '4': 2, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `Movie`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List movieDescriptor = $convert.base64Decode(
    'CgVNb3ZpZRIOCgJpZBgBIAIoCVICaWQSFAoFdGl0bGUYAiACKAlSBXRpdGxlEhQKBWdlbnJlGA'
    'MgASgJUgVnZW5yZRIUCgVwcmljZRgEIAIoAVIFcHJpY2U=');

@$core.Deprecated('Use rentalDescriptor instead')
const Rental$json = {
  '1': 'Rental',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'user_login', '3': 2, '4': 2, '5': 9, '10': 'userLogin'},
    {'1': 'movie_id', '3': 3, '4': 2, '5': 9, '10': 'movieId'},
    {'1': 'rental_date', '3': 4, '4': 1, '5': 9, '10': 'rentalDate'},
    {'1': 'return_date', '3': 5, '4': 1, '5': 9, '10': 'returnDate'},
  ],
};

/// Descriptor for `Rental`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rentalDescriptor = $convert.base64Decode(
    'CgZSZW50YWwSDgoCaWQYASACKAlSAmlkEh0KCnVzZXJfbG9naW4YAiACKAlSCXVzZXJMb2dpbh'
    'IZCghtb3ZpZV9pZBgDIAIoCVIHbW92aWVJZBIfCgtyZW50YWxfZGF0ZRgEIAEoCVIKcmVudGFs'
    'RGF0ZRIfCgtyZXR1cm5fZGF0ZRgFIAEoCVIKcmV0dXJuRGF0ZQ==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'login', '3': 1, '4': 2, '5': 9, '10': 'login'},
    {'1': 'senha', '3': 2, '4': 2, '5': 9, '10': 'senha'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSFAoFbG9naW4YASACKAlSBWxvZ2luEhQKBXNlbmhhGAIgAigJUgVzZW'
    '5oYQ==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 2, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 2, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASACKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIA'
    'IoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use movieRequestDescriptor instead')
const MovieRequest$json = {
  '1': 'MovieRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `MovieRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List movieRequestDescriptor =
    $convert.base64Decode('CgxNb3ZpZVJlcXVlc3QSDgoCaWQYASACKAlSAmlk');

@$core.Deprecated('Use rentalRequestDescriptor instead')
const RentalRequest$json = {
  '1': 'RentalRequest',
  '2': [
    {'1': 'user_login', '3': 1, '4': 2, '5': 9, '10': 'userLogin'},
    {'1': 'movie_id', '3': 2, '4': 2, '5': 9, '10': 'movieId'},
  ],
};

/// Descriptor for `RentalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rentalRequestDescriptor = $convert.base64Decode(
    'Cg1SZW50YWxSZXF1ZXN0Eh0KCnVzZXJfbG9naW4YASACKAlSCXVzZXJMb2dpbhIZCghtb3ZpZV'
    '9pZBgCIAIoCVIHbW92aWVJZA==');
