import 'package:flutter/material.dart';

class WeightTable extends StatelessWidget {
  const WeightTable({ super.key });

  List<DataColumn> generateWeightColumns(List<String> columns) {
    return columns.map((e) => DataColumn(label: Text(e))).toList();
  }

  List<DataRow> generateItemRow(List<String> values) {
    return values.map((e) => const DataRow(cells: <DataCell>[
        DataCell(Text('e')),
        DataCell(Text('e2')),
      ]
    )).toList();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DataTable(
          columns: generateWeightColumns(['Date', 'Weight 2']),
          rows: generateItemRow(['one', 'two'])
        ),
      ),
    );
  }
}