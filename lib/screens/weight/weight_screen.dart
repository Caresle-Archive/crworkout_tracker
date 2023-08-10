import 'package:flutter/material.dart';

class WeightScreen extends StatelessWidget {
  const WeightScreen({super.key});

  void openDialog(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      builder: (context) => _AddWeight(colors: colors),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight'),
      ),
      body: const Text('Weight'),
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

class _AddWeight extends StatelessWidget {
  const _AddWeight({
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 40;
    
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: colors.onInverseSurface
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox( height: 20,),
            const Text('New Weight'),
            const SizedBox( height: 20,),
            SizedBox(
              width: width,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Weight'
                ),
              ),
            ),
            const SizedBox( height: 20,),
            SizedBox(
              width: width,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Add Weight')
              )
            )
          ]
        ),
      ),
    );
  }
}