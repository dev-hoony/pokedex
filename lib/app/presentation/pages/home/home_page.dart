import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/app/presentation/bloc/pokemon_bloc.dart';
import 'package:pokedex/app/presentation/bloc/pokemon_event.dart';
import 'package:pokedex/app/presentation/pages/home/widgets/pokemon_list_view.dart';
import 'package:pokedex/app/util/log_util.dart';

import '../../bloc/pokemon_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PokemonBloc>(context).add(LoadPokemonListEvent());

    return Scaffold(
      body: BlocBuilder<PokemonBloc, PokemonState>(builder: (context, state) {
        LogUtil.d("list : ${state.list}");
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: const Placeholder(),
                ),
                PokemonListView(
                  list: state.list,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
