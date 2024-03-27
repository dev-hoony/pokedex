import 'package:flutter/material.dart';
import 'package:pokedex/app/presentation/pages/detail/detail_page.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key});

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
                  child: Placeholder(),
                ),
                Positioned(
                  left: 4,
                  bottom: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.black.withOpacity(0.4),
                    child: Text('number'),
                  ),
                )
              ],
            ),
            Text("pokemon name"),
          ],
        ),
      ),
    );
  }
}
