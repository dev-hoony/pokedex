import 'dart:convert';

import 'package:http/http.dart';
import 'package:pokedex/app/data/model/response/get_pokemon_list_response.dart';
import 'package:pokedex/app/data/remote/interface/poke_api.dart';

import '../../di/locator.dart';

class PokeApiImpl extends PokeApi {
  final _client = serviceLocator<Client>();
  final serverUrl = "pokeapi.co";

  @override
  Future<GetPokemonListResponse> getPokemonList() async {
    Uri uri = Uri.https(serverUrl, '/api/v2/pokemon');
    final response = await _client.get(uri);

    switch (response.statusCode) {
      case 200:
        GetPokemonListResponse res = GetPokemonListResponse.fromJson(
            jsonDecode(response.body));
        return res;
      default:
        throw Exception('Failed to load notion data');
    }
  }
}
