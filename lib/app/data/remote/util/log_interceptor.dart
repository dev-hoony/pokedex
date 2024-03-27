import 'dart:convert';

import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

import '../../../util/log_util.dart';

class LogInterceptor implements InterceptorContract {
  String TAG = 'LogIntercept';

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    LogUtil.d("$TAG - method : ${data.method} url : ${data.url}");
    LogUtil.d("$TAG - req body : ${data.body}");
    LogUtil.d("$TAG - req time : ${DateTime.now().toIso8601String()}");

    data.headers["Content-Type"] = "application/json";

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    LogUtil.d("$TAG - statusCode : ${data.toHttpResponse().statusCode}");
    LogUtil.d("$TAG - res body : ${utf8.decode(data.bodyBytes)}");
    // LogUtil.d("$TAG - res cookie : ${data.headers?["set-cookie"] ?? "null"}");
    LogUtil.d("$TAG - res time : ${DateTime.now().toIso8601String()}");
    return data;
  }
}
