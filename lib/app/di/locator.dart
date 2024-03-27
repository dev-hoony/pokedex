import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:pokedex/app/data/remote/interface/poke_api.dart';
import 'package:pokedex/app/data/remote/poke_api_impl.dart';
import 'package:pokedex/app/data/remote/util/log_interceptor.dart';
import 'package:pokedex/app/data/repositoryimpl/pokemon_repository_impl.dart';
import 'package:pokedex/app/domain/repository/pokemon_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  // localStorage (SharedPreference)
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator
      .registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // Api
  await _registerApi();

  // Repository
  await _registerRepository();

  // HttpClient
  serviceLocator.registerLazySingleton<Client>(
    () => InterceptedClient.build(
      interceptors: [
        LogInterceptor(),
      ],
    ),
  );
}

Future<void> _registerApi() async {
  serviceLocator.registerLazySingleton<PokeApi>(() => PokeApiImpl());
}

Future<void> _registerRepository() async {
  serviceLocator
      .registerLazySingleton<PokemonRepository>(() => PokemonRepositoryImpl());
}
