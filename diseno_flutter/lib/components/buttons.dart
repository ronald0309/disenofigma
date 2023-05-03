import 'package:flutter/material.dart';

class ButtonAccion extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Size size; // Nueva propiedad para definir el tamaño del botón
  final Color textColor;
  const ButtonAccion({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.size, // Agregamos size al constructor
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Center(
          child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: this.textColor,
            fontSize: 16.0,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
              size), // Definimos el tamaño mínimo
        ),
      )),
    );
  }
}
