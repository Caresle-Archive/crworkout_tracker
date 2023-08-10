import 'package:flutter/material.dart';

class WeightTarget extends StatelessWidget {
  const WeightTarget({ super.key });

  TextStyle generalStyle(FontStyle fontStyle, double size) => TextStyle(
    fontSize: size,
    fontWeight: FontWeight.bold,
    fontStyle: fontStyle
  );

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: MediaQuery.of(context).size.height * .25,
      width: MediaQuery.of(context).size.width * .95,
      decoration: BoxDecoration(
        color: colors.background,
        border: Border.all(
          color: colors.primary
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Target', style: generalStyle(FontStyle.normal, 20),),
            Text(
              '63 KG',
              style: generalStyle(FontStyle.italic, 64)
            ),
            Text('You can do it', style: generalStyle(FontStyle.normal, 22),)
          ],
        )
      ),
    );
  }
}