import '../../model/response/get_pokemon_list_response.dart';

abstract class PokeApi {
  Future<GetPokemonListResponse> getPokemonList();
}
