import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projectmain/app/models/post_model.dart';

import 'package:projectmain/themes.dart';

import '../../../../widgets/overlayed_container.dart';
import '../../../../widgets/post_container.dart';
import '../../../models/single_post.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String imageX =
        "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80";
    return Obx(() {
      return controller.isLoad.value
          ? Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: Text(
                  "My Blog",
                  style: boldText20,
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: InkWell(
                      onTap: () {
                        controller.cekPost();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Image.network(
                          "https://w7.pngwing.com/pngs/365/764/png-transparent-computer-icons-refresh-free-one-button-reload-text-logo-monochrome-thumbnail.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              body: controller.listData2.value.length >= 0
                  ? ListView(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .35,
                          margin: const EdgeInsets.symmetric(vertical: 15.0),
                          child: PageView.builder(
                            controller: PageController(viewportFraction: .76),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.listData2.value.length,
                            itemBuilder: (context, i) => OverlayedContainer(
                                authorAvatar:
                                    "https://cdn-icons-png.flaticon.com/512/6596/6596121.png",
                                author:
                                    "${controller.listData2.value[i].author}",
                                image:
                                    "https://1.bp.blogspot.com/-zkO2F1dXVWI/YL4jojME_5I/AAAAAAAAE0k/LhAxpuxVT0QuRP3MskMWSmugTqc-AEyHACLcBGAsYHQ/s640/cara%2Bmenghapus%2Bblog.jpg",
                                title: "${controller.listData2.value[i].slug}",
                                onTap: () {
                                  Get.toNamed(Routes.POST, arguments: {
                                    PostModel: controller.listData2.value[i]
                                  });
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "All Posts",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.listData2.value.length,
                                itemBuilder: (context, i) => PostContainer(
                                    author:
                                        "${controller.listData2.value[i].author}",
                                    image:
                                        "https://1.bp.blogspot.com/-zkO2F1dXVWI/YL4jojME_5I/AAAAAAAAE0k/LhAxpuxVT0QuRP3MskMWSmugTqc-AEyHACLcBGAsYHQ/s640/cara%2Bmenghapus%2Bblog.jpg",
                                    title:
                                        "${controller.listData2.value[i].slug}",
                                    onTap: () {
                                      Get.toNamed(Routes.POST, arguments: {
                                        PostModel: controller.listData2.value[i]
                                      });
                                    }),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  : Text("Tidak Ada Data"),
            )
          : Container(
              child: const Center(
              child: CircularProgressIndicator(),
            ));
    });
  }
}
