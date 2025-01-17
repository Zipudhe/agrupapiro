import 'package:flutter/material.dart';

class ButtonMenuSection extends StatelessWidget {
  final IconData icon;
  final String route;
  final String label;
  final Color color;

  const ButtonMenuSection({
    required this.icon,
    required this.route,
    required this.label,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, this.route);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adicionar um ícone que se relacione com atividades
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
