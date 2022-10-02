import  'package:flutter/material.dart';
import 'package:micartelera/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  
  @override
  Widget build(BuildContext context) {

    // Por Hacer: Cambiar luego por una instancia de movie

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

   return   Scaffold(
      body: CustomScrollView  (
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(),
              _Overview(),
              _Overview(),
              _Overview(),
              CastingCards()
            ]
               
            )
          )
        ],    
      )
    );        
  }



}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          // color: const Color.fromARGB(246, 183, 9, 84),
          child: const Text(
            'movie.title',
            style: TextStyle( fontSize: 16 ),
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://avatar.amuniversal.com/user_avatars/avatars_gocomicsver3/1241000/1241766/spongebob-300x400.jpg'),
          // image: NetworkImage('assets/loading.gif'),
          fit: BoxFit.cover,
        ),

      ),
    );
  }
}
  

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of(context).textTheme;

    return  Container(
      margin: const EdgeInsets.only(top:20),
      padding: const EdgeInsets.symmetric( horizontal: 20 ) ,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),

          SizedBox( width: 20, ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie.title', 
                style: textTheme.headline5, 
                overflow: TextOverflow.ellipsis, 
                maxLines: 2, 
              ),
              Text(
                'movie.originalTitle', 
                style: textTheme.subtitle1, 
                overflow: TextOverflow.ellipsis, 
                maxLines: 2, 
              ),

              Row(
                children: [
                  Icon( Icons.star_outline, size: 15, color: Colors.grey ),
                  SizedBox(width: 5,),
                  Text('movie.voteAverage', style:  Theme.of(context).textTheme.caption )

                ],
              )

            ],
          )

        ],
      )
    );
  }
}


class _Overview  extends StatelessWidget {
  const _Overview ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'In qui dolore voluptate qui mollit officia magna anim veniam consectetur irure culpa amet officia. Incididunt Lorem anim occaecat voluptate adipisicing fugiat elit ut laboris anim voluptate pariatur. Magna sunt tempor eiusmod dolor.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1

      ),



    );
  }
}











