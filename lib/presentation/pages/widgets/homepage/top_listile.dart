import 'package:appstoreclone/core/app_constants/colors.dart';
import 'package:appstoreclone/core/models/toplist_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopListTile extends StatelessWidget {
  const TopListTile({super.key, required this.contents});
  final List<TopListTileModel> contents;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: contents.length,
        itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: AppColors.topListTileColor,
                borderRadius: BorderRadius.circular(10)),
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(contents[index].imageUrl),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    contents[index].content.toString(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            )));
  }
}
