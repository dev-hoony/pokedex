import 'package:pokedex/app/domain/entity/pokemon.dart';
import 'package:pokedex/app/domain/repository/pokemon_repository.dart';

import '../../di/locator.dart';

class GetPokemonListUseCase {
  GetPokemonListUseCase();

  static Future<List<Pokemon>> call() async {
    PokemonRepository repository = serviceLocator<PokemonRepository>();
    final result = await repository.getPokemonList();
    return result;
  }
}
