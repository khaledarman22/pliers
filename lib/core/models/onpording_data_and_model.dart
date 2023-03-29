import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';

class OnPordingInfo {
  final String title;
  final String image;
  final String body;
  OnPordingInfo({
    required this.title,
    required this.image,
    required this.body,
  });
}

List<OnPordingInfo> onpording = [
  OnPordingInfo(
    title: AppString.onpordingTitle1,
    image: AppImages.onpording1,
    body: AppString.onpordingbody1,
  ),
  OnPordingInfo(
    title: AppString.onpordingTitle2,
    image: AppImages.onpording2,
    body: AppString.onpordingbody2,
  ),
  OnPordingInfo(
    title: AppString.onpordingTitle3,
    image: AppImages.onpording3,
    body: AppString.onpordingbody3,
  ),
];
