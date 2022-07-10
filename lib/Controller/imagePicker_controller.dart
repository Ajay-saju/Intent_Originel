

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  String? image ;

  imageFromCamera() async {
    final fimage = await _picker.pickImage(source: ImageSource.camera);
    image = fimage.toString();
  }

  imageFromGallery() async {
    final fimage = await _picker.pickImage(source: ImageSource.gallery);
    image = fimage.toString();
  }
}
