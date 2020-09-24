import 'package:flutter/material.dart';

class CustomLabels extends StatelessWidget {
  final String route;
  final String title;
  final String txtButton;

  const CustomLabels({Key key, @required this.route, @required this.title, @required this.txtButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, this.route);
            },
            child: Text(
              this.txtButton,
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
