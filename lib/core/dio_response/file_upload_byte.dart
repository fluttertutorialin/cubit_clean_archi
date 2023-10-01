/*
  Developed by: Lakhani kamlesh
  +91 9586331823
  kamal.lakhani56@gmail.com
*/

import 'package:freezed_annotation/freezed_annotation.dart';
part 'file_upload_byte.freezed.dart';

@Freezed(copyWith: false, equal: false)
class FileUploadByte with _$FileUploadByte {
  const factory FileUploadByte(
      {final List<int>? bytesData,
      final String? filename}) = _FileUploadByte;

  const FileUploadByte._();
}
