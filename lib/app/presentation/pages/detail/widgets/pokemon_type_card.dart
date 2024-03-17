import 'package:flutter/material.dart';

class PokemonTypeCard extends StatelessWidget {
  const PokemonTypeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 2,
      ),
      child: const Row(
        children: [
          Icon(Icons.add),
          Text("type"),
        ],
      ),
    );
  }
}
