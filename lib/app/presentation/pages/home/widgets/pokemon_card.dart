import 'package:flutter/material.dart';
import 'package:pokedex/app/presentation/pages/detail/detail_page.dart';

import '../../../../domain/entity/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon data;

  const PokemonCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Container(
        color: Colors.transparent,
        margin: const EdgeInsets.only(right: 8),
        width: 200,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  child: Image.network(data.imgUrl),
                ),
                Positioned(
                  left: 4,
                  bottom: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.black.withOpacity(0.4),
                    child: Text(data.number.toString()),
                  ),
                )
              ],
            ),
            Text(data.name),
          ],
        ),
      ),
    );
  }
}
