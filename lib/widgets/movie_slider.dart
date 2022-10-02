import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => const _MoviesPoster()
            )
          )
        ],
      ),
    );
  }
}

class _MoviesPoster extends StatelessWidget {
  const _MoviesPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://avatar.amuniversal.com/user_avatars/avatars_gocomicsver3/1241000/1241766/spongebob-300x400.jpg'),
                width: 130,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox( height: 5, ),

          const Text(
            'Código E: El legado de Alan Turing para las ciencias de la computación',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )

        ],
      )
    );
  }
}
