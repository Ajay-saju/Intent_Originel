import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intent_original/Controller/imagePicker_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/title_text_bold_widget.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class ProfilePicture extends StatelessWidget {
  final bool isvisible;
  VoidCallback? ontap;

  ProfilePicture({
    this.ontap,
    Key? key,
    required this.isvisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ImagePicker _picker = ImagePicker();

    // String image = '';
    ImagePickerController imagePickerController = ImagePickerController();

    return InkWell(
      onTap: ontap,
      child: CircleAvatar(
          backgroundColor: amber,
          radius: 9.4.h,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 9.h,
                backgroundImage: NetworkImage(imagePickerController.image !=
                        null
                    ? imagePickerController.image.toString()
                    : 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Visibility(
                      visible: isvisible,
                      child: InkWell(
                          onTap: () {
                            Get.bottomSheet(Padding(
                              padding: EdgeInsets.all(10.h),
                              child: SingleChildScrollView(
                                child: Center(
                                  child: Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent
                                              .withOpacity(0.7)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              await imagePickerController
                                                  .imageFromCamera();
                                            },
                                            child: SvgPicture.asset(
                                              'asset/Icons/camera-svgrepo-com.svg',
                                              height: 10.h,
                                              width: 10.h,
                                            ),
                                          ),
                                          const TitleTextWidget(
                                              color: amber,
                                              text:
                                                  'Take a Picture form Camara',
                                              fontSize: 12),
                                          h4,
                                          InkWell(
                                            onTap: () async {
                                              await imagePickerController
                                                  .imageFromGallery();
                                            },
                                            child: SvgPicture.asset(
                                              'asset/Icons/gallery-svgrepo-com.svg',
                                              height: 9.h,
                                              width: 9.h,
                                            ),
                                          ),
                                          const TitleTextBoldWidget(
                                              color: amber,
                                              text:
                                                  'Take a Picture from Gallery',
                                              fontSize: 12)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ));
                          },
                          child: SvgPicture.asset(
                            'asset/Icons/add-image-svgrepo-com.svg',
                            height: 4.5.h,
                            width: 4.5.h,
                          ))))
            ],
          )),
    );
  }
}
