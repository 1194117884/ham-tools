import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:ham_tools/request/vika_req_res.dart';

class VikaDataConnect extends GetConnect {
  final String authorization;

  VikaDataConnect(this.authorization);

  /// send a get Request
  Future<Map<String, dynamic>> getRequest(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    String? contentType,
  }) async {
    headers ??= {};
    contentType ??= "application/json";
    headers.putIfAbsent('Authorization', () => "Bearer $authorization");

    Response response = await get(
      url,
      headers: headers,
      contentType: contentType,
      query: query,
    );
    log(response.bodyString ?? "{}");

    if (response.statusCode == 200 && response.bodyString != null) {
      return VikaBaseResponse.fromJson(jsonDecode(response.bodyString ?? "{}"))
          .data;
    }
    return {};
  }

  /// send a post Request
  Future<Map<String, dynamic>> postRequest(
    String? url,
    dynamic body, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    String? contentType,
  }) async {
    headers ??= {};
    headers.putIfAbsent('Authorization', () => "Bearer $authorization");

    contentType ??= "application/json";

    Response response = await post(
      url,
      jsonEncode(body),
      headers: headers,
      query: query,
      contentType: contentType,
    );
    log(response.bodyString ?? "{}");

    if ((response.statusCode == HttpStatus.ok ||
            response.statusCode == HttpStatus.created) &&
        response.bodyString != null) {
      return VikaBaseResponse.fromJson(jsonDecode(response.bodyString ?? "{}"))
          .data;
    }
    return {};
  }
}
