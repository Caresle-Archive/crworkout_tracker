import 'package:crworkout_tracker/screens/weight/add_weight.dart';
import 'package:crworkout_tracker/screens/weight/weight_table.dart';
import 'package:crworkout_tracker/screens/weight/weight_target.dart';
import 'package:flutter/material.dart';


class WeightScreen extends StatelessWidget {
  const WeightScreen({super.key});

  void openDialog(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      builder: (context) => AddWeight(colors: colors),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            WeightTarget(),
            SizedBox(height: 20,),
            WeightTable()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openDialog(context);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}