import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  final VoidCallback onPressed;

  const MyApp({Key key, @required this.onPressed}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              "Aún no tienes \nsaldo de envases!",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Text(
              "BUSCA UNA TIENDA PARA\n DEVOLVER TUS ENVASES",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            botonLocation(),
            SizedBox(height: 10.0),
            botonLocales()
            //hola
          ],
        ),
      ),
    );
  }

  RaisedButton botonLocales() {
    return RaisedButton(
        child: Text("Ver locales", style: TextStyle(color: Colors.white)),
        color: Colors.blue,
        onPressed: widget.onPressed,
        padding: EdgeInsets.symmetric(horizontal: 60.0));
  }

  Stack botonLocation() {
    return Stack(alignment: AlignmentDirectional.center, children: [
      CircleAvatar(backgroundColor: Colors.blue[50], radius: 70.0),
      Icon(Icons.location_pin, color: Colors.blue, size: 70.0)
    ]);
  }
}
