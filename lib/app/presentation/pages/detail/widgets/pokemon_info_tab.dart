import 'package:flutter/material.dart';

class PokemonInfoTab extends StatelessWidget {
  const PokemonInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle("기본 정보"),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                _buildInfoView(title: "신장", value: "text"),
                _buildInfoView(title: "몸무게", value: "text"),
                _buildInfoView(title: "주 능력", value: "text"),
                _buildInfoView(title: "기본 경험치", value: "text"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            _buildTitle("기본 능력치"),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              columnWidths: const {
                2: FlexColumnWidth(),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                _buildStatView(title: "체력", stat: 10),
                _buildStatView(title: "공격", stat: 10),
                _buildStatView(title: "방어", stat: 10),
                _buildStatView(title: "특수공격", stat: 10),
                _buildStatView(title: "특수방어", stat: 10),
                _buildStatView(title: "스피드", stat: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildInfoView({String title = "", String value = ""}) {
    return TableRow(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          child: _buildDescTitle(title),
        ),
        _buildDescValue(value),
      ],
    );
  }

  Widget _buildTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
    );
  }

  Widget _buildDescTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Widget _buildDescValue(String text) {
    return Text(text);
  }

  Widget _buildGauge(double value) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: LinearProgressIndicator(
        minHeight: 12,
        value: value / 25,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  TableRow _buildStatView({
    String title = "",
    double stat = 0,
  }) {
    return TableRow(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          child: _buildDescTitle(title),
        ),
        _buildDescValue(stat.toInt().toString()),
        _buildGauge(stat)
      ],
    );
  }
}
