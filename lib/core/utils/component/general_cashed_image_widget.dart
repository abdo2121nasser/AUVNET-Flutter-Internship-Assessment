import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path/path.dart' as path;

class GeneralCashedImageWidget extends StatefulWidget {
  final String link;
  const GeneralCashedImageWidget({super.key, required this.link});

  @override
  State<GeneralCashedImageWidget> createState() =>
      _GeneralCashedImageWidgetState();
}

class _GeneralCashedImageWidgetState extends State<GeneralCashedImageWidget> {
  String? _imagePath;
  String? _thumbnailPath;

  @override
  Widget build(BuildContext context) {
    // Display thumbnail if it's a video, otherwise display the image
    return _thumbnailPath != null
        ? Image.file(
            File(_thumbnailPath!),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.broken_image),
          )
        : _imagePath != null
            ? Image.file(
                File(_imagePath!),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image),
              )
            : const SizedBox();
    // const Center(
    //             child: CircularProgressIndicator(
    //               color: ColorManager.kPurpleColor,
    //             ),
    //           );
  }

  @override
  void initState() {
    super.initState();
    _processFile(); // Process file based on its type
  }

  Future<void> _processFile() async {
    final cacheManager = DefaultCacheManager();
    final fileInfo = await cacheManager.getFileFromCache(widget.link);
    File? file;

    if (fileInfo != null && fileInfo.file.existsSync()) {
      file = fileInfo.file;
    } else {
      file = await cacheManager.getSingleFile(widget.link);
    }

    if (_isImageFile(file)) {
      // If it's an image, just set the image path
      if (mounted) {
        setState(() {
          _imagePath = file?.path;
        });
      }
    } else {
      // Handle unsupported file types if needed
      print('Unsupported file type.');
    }
  }

  bool _isImageFile(File file) {
    final extension = path.extension(file.path).toLowerCase();
    return extension == '.jpg' ||
        extension == '.jpeg' ||
        extension == '.png' ||
        extension == '.gif' ||
        extension == '.webp';
  }

  @override
  void dispose() {
    _imagePath = null;
    _thumbnailPath = null;
    super.dispose();
  }
}
