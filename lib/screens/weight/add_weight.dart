import 'package:flutter/material.dart';

class AddWeight extends StatelessWidget {
  const AddWeight({ super.key, required this.colors });

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
            _WeightTextField(width: width),
            const SizedBox( height: 20,),
            _AddWeightButton(width: width)
          ]
        ),
      ),
    );
  }
}

class _AddWeightButton extends StatelessWidget {
  const _AddWeightButton({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
        onPressed: () {},
        child: const Text('Add Weight')
      )
    );
  }
}

class _WeightTextField extends StatelessWidget {
  const _WeightTextField({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Weight'
        ),
      ),
    );
  }
}