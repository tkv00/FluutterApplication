import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.bannerItemUrl,
  });

  final List<String> bannerItemUrl;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: bannerItemUrl.length,
      options: CarouselOptions(
        viewportFraction: 1.0,
        autoPlay: true,
      ),
      itemBuilder: (context,itemIndex,realIndex){
        return Stack(
          children: [
            Image.asset(
              "${bannerItemUrl[itemIndex]}",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.black38,
                padding: const EdgeInsets.all(4.0),
                margin: EdgeInsets.all(16.0),
                child: Text(
                  (itemIndex+1).toString()+" / "+bannerItemUrl.length.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
