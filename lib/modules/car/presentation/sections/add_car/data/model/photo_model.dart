

import 'dart:io';

class PhotoModel {
  final String filePath;
  final String fileName;
  final int fileSize;
  final DateTime selectedAt;

  PhotoModel({
    required this.filePath,
    required this.fileName,
    required this.fileSize,
    required this.selectedAt,
  });

  factory PhotoModel.fromFilePath(String path) {
    final file = File(path);
    return PhotoModel(
      filePath: path,
      fileName: path.split('/').last,
      fileSize: file.lengthSync(),
      selectedAt: DateTime.now(),
    );
  }

  // Для удобства получения File объекта
  File get file => File(filePath);

  PhotoModel copyWith({
    String? filePath,
    String? fileName,
    int? fileSize,
    DateTime? selectedAt,
  }) {
    return PhotoModel(
      filePath: filePath ?? this.filePath,
      fileName: fileName ?? this.fileName,
      fileSize: fileSize ?? this.fileSize,
      selectedAt: selectedAt ?? this.selectedAt,
    );
  }
}