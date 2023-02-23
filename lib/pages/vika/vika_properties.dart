import 'dart:io';

import 'package:yaml/yaml.dart';

class VikaProperties {
  static const String yamlPath = "assets/properties/vika.yml";

  final Map<String, dynamic> properties;

  static final VikaProperties _singleton = VikaProperties._internal();

  factory VikaProperties() {
    return _singleton;
  }

  VikaProperties._internal() : properties = readYaml(yamlPath);

  static Map<String, String> readYaml(String path) {
    File file = File(path);
    String yamlString = file.readAsStringSync();
    Map<String, String> map = loadYaml(yamlString);
    return map ??= {};
  }
}
