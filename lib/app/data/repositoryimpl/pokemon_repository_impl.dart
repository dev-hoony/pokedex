import 'package:pokedex/app/di/locator.dart';
import 'package:pokedex/app/domain/entity/pokemon.dart';
import 'package:pokedex/app/domain/repository/pokemon_repository.dart';

import '../mapper/pokemon_mapper.dart';
import '../remote/interface/poke_api.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final _pokeApi = serviceLocator<PokeApi>();

  @override
  Future<List<Pokemon>> getPokemonList() async {
    var response = await _pokeApi.getPokemonList();
    return PokemonMapper.mapDataToDomainList(response.results);
  }
}
