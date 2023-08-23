import 'package:flutter/material.dart';

class WeightTable extends StatelessWidget {
  const WeightTable({ super.key });

  List<DataColumn> generateWeightColumns(List<String> columns) {
    return columns.map((e) => DataColumn(label: Text(e))).toList();
  }

  List<DataRow> generateItemRow(List<Map<String, dynamic>> values) {
    return values.map((e) => DataRow(
      cells: generateItemCells(e),
    )).toList();
  }

  List<DataCell> generateItemCells(Map<String, dynamic> value) {
    return <DataCell>[
      DataCell(Text('${value['date']}')),
      DataCell(Text('${value['weight']}')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DataTable(
          columns: generateWeightColumns(['Date', 'Weight 2']),
          rows: generateItemRow([{ 'date': 1, 'weight': 64}, { 'date': 1, 'weight': 64}])
        ),
      ),
    );
  }
}