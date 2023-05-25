import 'dart:convert';

import 'package:get/get.dart';
import 'package:projectmain/app/models/post_model.dart';

import '../../../../constan/global.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxList<PostModel> listData2 = <PostModel>[].obs;
  RxBool isLoad = false.obs;

  @override
  void onInit() async {
    super.onInit();
    cekPost();
  }

  Future<void> cekPost() async {
    // isLoad(false);
    try {
      Uri url = Uri.parse(baseUrl2);
      final response = await http.get(url);
      print(response.body);

      final result = jsonDecode(response.body).cast<Map<String, dynamic>>();

      listData2(RxList.from(result.map((e) => PostModel.fromJson(e))));
      isLoad(true);
      print(listData2.value[0].author);
    } catch (e) {
      print("error di ${e.toString()}");
      // isLoad(true);
    }
  }
}
