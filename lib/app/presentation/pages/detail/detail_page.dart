import 'package:flutter/material.dart';
import 'package:pokedex/app/presentation/pages/detail/widgets/evolution_tab.dart';
import 'package:pokedex/app/presentation/pages/detail/widgets/pokemon_info_tab.dart';
import 'package:pokedex/app/presentation/pages/detail/widgets/pokemon_section.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  final bgColor = Colors.grey;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: bgColor,
      body: Column(
        children: [
          const PokemonSection(),
          TabBar(
            automaticIndicatorColorAdjustment: false,
            controller: _tabController,
            dividerColor: Colors.transparent, // remove underline
            tabs: const [
              Tab(
                text: "정보",
              ),
              Tab(
                text: "진화",
              )
            ],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  PokemonInfoTab(),
                  EvolutionTab(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
