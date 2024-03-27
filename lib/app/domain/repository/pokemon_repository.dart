import '../entity/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemonList();
}
