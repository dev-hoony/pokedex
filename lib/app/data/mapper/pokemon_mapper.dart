import 'package:pokedex/app/data/model/pokemon_data.dart';

import '../../domain/entity/pokemon.dart';

class PokemonMapper {
  static List<Pokemon> mapDataToDomainList(List<PokemonData> list) {
    return list.map((e) => mapDataToDomain(e)).toList();
  }

  static Pokemon mapDataToDomain(PokemonData model) {
    var arr = model.url.split('/');
    var num = arr[arr.length - 2];

    return Pokemon(
        number: int.parse(num),
        name: model.name,
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$num.png");
  }
}
