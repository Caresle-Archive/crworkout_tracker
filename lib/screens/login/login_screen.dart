import 'package:crworkout_tracker/screens/login/login_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: colors.onInverseSurface,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: _CardContent(colors: colors)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    required this.colors,
  });

  final ColorScheme colors;

  InputDecoration inputDecoration(String text, IconData icon) => InputDecoration(
    border: const OutlineInputBorder(),
    hintText: text,
    suffixIcon: Icon(icon),
  );

  TextStyle textStyle() => const TextStyle(
    fontSize: 32,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title
        Text('CR WORKOUT', style: textStyle(),),
        const SizedBox(height: 20,),

        // Circle
        _CustomCirclePicture(colors: colors),
        const SizedBox(height: 20,),

        // Form
        TextFormField(
          decoration: inputDecoration('Username', Icons.account_circle_rounded),
        ),
        const SizedBox(height: 30,),
        TextFormField(
          obscureText: true,
          decoration: inputDecoration('Password', Icons.remove_red_eye_rounded),
          
        ),
        const SizedBox(height: 30,),
        const LoginButton(),
      ],
    );
  }
}

class _CustomCirclePicture extends StatelessWidget {
  const _CustomCirclePicture({
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        color: colors.inverseSurface,
        borderRadius: BorderRadius.circular(90)
      ),
    );
  }
}