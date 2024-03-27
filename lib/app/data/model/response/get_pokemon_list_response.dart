import 'package:pokedex/app/util/log_util.dart';

import '../pokemon_data.dart';

class GetPokemonListResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonData> results;

  GetPokemonListResponse({
    this.count = 0,
    this.next,
    this.previous,
    this.results = const [],
  });

  factory GetPokemonListResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> list = json['results'];
    LogUtil.d("list fromJson : ${list}");
    // var list = jsonDecode(json['result'] ?? []) as List)
    // final result = (jsonDecode(json['result'] ?? []) as List)
    //     .map((data) => PokemonData.fromJson(data))
    //     .toList();
    var results = list.map((data) => PokemonData.fromJson(data)).toList();
    LogUtil.d("results fromJson : ${results}");
    return GetPokemonListResponse(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: results,
    );
  }
}
