abstract class BaseRepository {

  String getErrorFromResponse(dynamic data) {
    String message = 'Unknown error';
    try {
      //final data = result.data;
      if (data is Map<String, dynamic>) {
        final err = data['error'];
        final err2 = data['message'];
        if (err is String && err.isNotEmpty) {
          message = err;
        }
        if (err2 is String && err2.isNotEmpty) {
          message = err2;
        }
      }
    } catch (_) {}
    return message;
  }
}