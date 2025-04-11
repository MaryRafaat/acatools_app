// Usage: Logger.log("Error message", stackTrace: StackTrace.current);
class Logger {
  static LogMode _logMode = LogMode.debug;
  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      print("Error: $data$stackTrace");
      if (stackTrace != null) {
        print(stackTrace);
      }
    }
  }
}

enum LogMode { debug, live }
