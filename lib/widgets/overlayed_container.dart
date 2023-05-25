import 'package:flutter/material.dart';
import 'package:projectmain/themes.dart';

class OverlayedContainer extends StatelessWidget {
  final String title, image, author, authorAvatar;
  final onTap;

  const OverlayedContainer(
      {Key? key,
      required this.title,
      required this.image,
      required this.author,
      required this.onTap,
      required this.authorAvatar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 9.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          image: DecorationImage(
            image: NetworkImage(image),
            colorFilter:
                const ColorFilter.mode(Colors.black45, BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: semiBoldText20.copyWith(color: whiteColor),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.network(
                      authorAvatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Flexible(
                  flex: 9,
                  child: Text(
                    author,
                    style: semiBoldText14.copyWith(color: whiteColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
