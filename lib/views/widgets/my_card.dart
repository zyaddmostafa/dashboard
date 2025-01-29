import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardbackground),
            fit: BoxFit.fill,
          ),
          color: Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name card',
                style: Styles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: Styles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Styles.styleSemibold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: Styles.styleRegular16.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 27,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
