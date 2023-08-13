// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloWorldHash() => r'c39d0be46719f2cfec8b103a2893b3781fee86d7';

/// See also [helloWorld].
@ProviderFor(helloWorld)
final helloWorldProvider = AutoDisposeProvider<String>.internal(
  helloWorld,
  name: r'helloWorldProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloWorldHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloWorldRef = AutoDisposeProviderRef<String>;
String _$nameHash() => r'544192facb69ee02f070fc80fa66ed50114f8f43';

/// See also [Name].
@ProviderFor(Name)
final nameProvider = AutoDisposeNotifierProvider<Name, dynamic>.internal(
  Name.new,
  name: r'nameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Name = AutoDisposeNotifier<dynamic>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
