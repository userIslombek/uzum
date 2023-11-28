import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                image: NetworkImage(
                  "https://avatars.mds.yandex.net/i?id=236513f1275fd14725a2bc76617674e74f8d3c47-10878220-images-thumbs&n=13",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                image: NetworkImage(
                  "https://avatars.mds.yandex.net/i?id=236513f1275fd14725a2bc76617674e74f8d3c47-10878220-images-thumbs&n=13",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                image: NetworkImage(
                  "https://avatars.mds.yandex.net/i?id=236513f1275fd14725a2bc76617674e74f8d3c47-10878220-images-thumbs&n=13",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
