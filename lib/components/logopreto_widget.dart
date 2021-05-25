import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class LogopretoWidget extends StatefulWidget {
  LogopretoWidget({Key key}) : super(key: key);

  @override
  _LogopretoWidgetState createState() => _LogopretoWidgetState();
}

class _LogopretoWidgetState extends State<LogopretoWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, -1),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
        child: Image.asset(
          'assets/images/logo-easyb-preto.png',
          width: 125,
          height: 60,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
