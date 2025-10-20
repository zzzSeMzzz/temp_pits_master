abstract class BaseRepository {

  String getErrorFromResponse(dynamic data) {
    String message = 'Unknown error';
    try {
      //final data = result.data;
      if (data is Map<String, dynamic>) {
        final err = data['error'];
        if (err is String && err.isNotEmpty) {
          message = err;
        }
      }
    } catch (_) {}
    return message;
  }
}