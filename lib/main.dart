import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/app/presentation/bloc/pokemon_bloc.dart';

import 'app/di/locator.dart';
import 'app/presentation/pages/main/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await initServiceLocator();

  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PokemonBloc()),
      ],
      child: MaterialApp(
        title: 'Pokedex demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
