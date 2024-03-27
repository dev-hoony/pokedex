import 'package:flutter/material.dart';

import '../../../../domain/entity/pokemon.dart';
import 'pokemon_card.dart';

class PokemonListView extends StatelessWidget {
  final List<Pokemon> list;

  const PokemonListView({super.key, this.list = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1세대 포켓몬 목록",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, i) {
              return PokemonCard(data: list[i]);
            },
          ),
        ),
      ],
    );
  }
}
