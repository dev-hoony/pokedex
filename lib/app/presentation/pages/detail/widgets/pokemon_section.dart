import 'package:flutter/material.dart';
import 'package:pokedex/app/presentation/pages/detail/widgets/pokemon_type_card.dart';

class PokemonSection extends StatelessWidget {
  const PokemonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          width: 100,
          height: 100,
          child: const Placeholder(),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'pokemon no.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'pokemon name',
              style: TextStyle(fontSize: 24),
            ),
            Row(
              children: [
                PokemonTypeCard(),
                PokemonTypeCard(),
                PokemonTypeCard(),
              ],
            )
          ],
        )
      ],
    );
  }
}
