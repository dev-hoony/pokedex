class PokemonData {
  final String name;
  final String url;

  PokemonData({
    required this.name,
    required this.url,
  });

  // {
  // "name": "bulbasaur",
  // "url": "https://pokeapi.co/api/v2/pokemon/1/"
  // },

  factory PokemonData.fromJson(Map<String, dynamic> json) {
    return PokemonData(
      name: json['name'],
      url: json['url'],
    );
  }
}
