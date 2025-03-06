import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: ResponsiveRowColumn(
            layout:
                ResponsiveBreakpoints.of(context).equals(MOBILE)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            rowMainAxisSize: MainAxisSize.min,
            columnMainAxisSize: MainAxisSize.min,
            // rowSpacing: 20,
            columnSpacing: 30,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                columnFlex: 1,
                child: Text('Login', style: TextStyle(fontSize: 24)),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 2,
                columnFlex: 1,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 2,
                columnFlex: 1,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                columnFlex: 1,
                child: ElevatedButton(onPressed: () {}, child: Text('Login')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
