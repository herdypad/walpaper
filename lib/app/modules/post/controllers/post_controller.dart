import 'package:get/get.dart';
import 'package:projectmain/app/models/post_model.dart';

import '../../../models/single_post.dart';

class PostController extends GetxController {
  Rx<PostModel> dataQ = PostModel().obs;
  RxBool isLoad = false.obs;

  dynamic argumentData = Get.arguments;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  void init() async {
    print("mulai di Detail");
    try {
      final args = Get.arguments;
      final PostModel a = args[PostModel];
      dataQ(a);
    } catch (e) {
      print("orro nya $e");
    }
  }
}
