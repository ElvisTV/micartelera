import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


class CardSwiper extends StatelessWidget {  
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    return Container(
      width: double.infinity,
      height: 500,
      color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: ( _ , int index ) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                // image: NetworkImage('https://via.placeholder.com/300x400'),
                image: NetworkImage('https://es.visafoto.com/img/source355x388_cn.jpg'),
                fit: BoxFit.cover
              ),
            ),
          );
        }
      )
    );
  }
}