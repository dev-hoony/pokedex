import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/app/domain/usecase/get_pokemon_list_use_case.dart';
import 'package:pokedex/app/presentation/bloc/pokemon_event.dart';
import 'package:pokedex/app/presentation/bloc/pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonState()) {
    on<LoadPokemonListEvent>((event, emit) async {
      var result = await GetPokemonListUseCase.call();

      emit(state.copyWith(list: result));
    });
  }
}
