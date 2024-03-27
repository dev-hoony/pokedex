import 'package:pokedex/app/domain/entity/pokemon.dart';

class PokemonState {
  List<Pokemon> list;

  PokemonState({this.list = const []});

  PokemonState copyWith({List<Pokemon>? list}) {
    return PokemonState(
      list: list ?? this.list,
    );
  }
}
