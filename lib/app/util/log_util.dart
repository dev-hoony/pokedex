import 'package:logger/logger.dart';

class LogUtil {
  static final Logger _logger = Logger(printer: PrettyPrinter());

  // Level.debug
  static d(dynamic msg) => _logger.d(msg);
  // static d(dynamic msg) => print(msg);

  // Level.error
  static e(dynamic msg) => _logger.e(msg);
  // static e(dynamic msg) => print(msg);

  // Level.info
  static i(dynamic msg) => _logger.i(msg);

  // Level.trace
  static t(dynamic msg) => _logger.t(msg);

  // Level.warning
  static w(dynamic msg) => _logger.w(msg);

  // Level.f (fatal)
  static wtf(dynamic msg) => _logger.f(msg);
}
