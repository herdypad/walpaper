import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projectmain/app/models/post_model.dart';
import 'package:projectmain/app/models/single_post.dart';
import 'package:projectmain/themes.dart';
import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  const PostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final PostModel dataQ = controller.dataQ.value;
      return SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, _) => Stack(
              children: <Widget>[
                Positioned.fill(
                  bottom: MediaQuery.of(context).size.height * .55,
                  child: Image.network(
                    "https://1.bp.blogspot.com/-zkO2F1dXVWI/YL4jojME_5I/AAAAAAAAE0k/LhAxpuxVT0QuRP3MskMWSmugTqc-AEyHACLcBGAsYHQ/s640/cara%2Bmenghapus%2Bblog.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: DraggableScrollableSheet(
                    initialChildSize: .65,
                    minChildSize: .65,
                    builder: (context, controller) => Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                      ),
                      child: ListView(
                        controller: controller,
                        children: <Widget>[
                          ListTile(
                            leading: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/6596/6596121.png",
                              height: 35,
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              dataQ.author.toString(),
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          const SizedBox(height: 9),

                          // Text(dataQ.content!),

                          HtmlWidget(dataQ.content!.rendered),
                          // Html(data: dataQ.content)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
