import 'dart:async';

class AsyncLazy {
  static AsyncLazy? _instance;
  static Completer<AsyncLazy>? _completer;
  AsyncLazy._internal();
  static Future<AsyncLazy?> getInstance() async {
    if (_instance != null) return _instance;
    if (_completer != null) return _completer!.future;
    _completer = Completer();
    _instance = AsyncLazy._internal();
    _completer!.complete(_instance);
    return _instance;
  }
}
