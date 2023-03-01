import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: constrainedBox(context)));
  }

  Widget fittedBoxExample(BuildContext buildContext) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.grey[300],
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.network(
            'https://images.unsplash.com/photo-1533319417894-6fbb331e5513?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
      ),
    );
  }

  Widget fittedBoxClassWork1(BuildContext buildContext) {
    return ListView(
      children: [
        Divider(),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.5,
              padding: EdgeInsets.all(20),
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1614851099518-055a1000e6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGxvZ298ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.all(20),
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://plus.unsplash.com/premium_photo-1661914978519-52a11fe159a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bG9nb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
            )
          ],
        ),
        Divider(),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.all(20),
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1601158935942-52255782d322?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvZ298ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.25,
              color: Colors.grey[300],
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1563694983011-6f4d90358083?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')),
            )
          ],
        ),
        Divider(),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height * 0.2,
              padding: EdgeInsets.all(20),
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1516876437184-593fda40c7ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGxvZ298ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.10,
              padding: EdgeInsets.all(20),
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1617727553252-65863c156eb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGxvZ298ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
            )
          ],
        ),
        Divider(),
      ],
    );
  }

  /// Crea una pantalla con una imagen de fondo que cubra todo el ancho y alto de la pantalla.
  /// En la parte central de la pantalla, agrega un contenedor con un ancho de 300 y un alto de 200.
  /// Dentro del contenedor, agrega una imagen que se ajuste automáticamente al tamaño del contenedor.

  Widget fittedBoxClassWork2(BuildContext buildContext) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1533319417894-6fbb331e5513?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }

  Widget aspectRatioExample(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.grey,
      alignment: Alignment.topRight,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }

  Widget aspectRatioClassWork1(BuildContext buildContext) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
      margin: EdgeInsets.all(20),
      color: Colors.grey,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 22 / 9,
        child: Container(
          color: Colors.blueGrey,
                    alignment: Alignment.center,
          child: Text("40%", style: TextStyle(fontSize: 10, color: Colors.white),),
        ),
      )
        ],
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.all(20),
      color: Colors.grey,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 32 / 9,
        child: Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text("60%", style: TextStyle(fontSize: 10, color: Colors.white),),
        ),
      )
        ],
      ),
    ),
        Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
            margin: const EdgeInsets.all(20),
      color: Colors.grey,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 42 / 9,
        child: Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: const Text("80%", style: TextStyle(fontSize: 10, color: Colors.white),),
        ),
      )
        ],
      ),
    ),
        Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
            margin: const EdgeInsets.all(20),
      color: Colors.grey,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 54 / 9,
        child: Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: const Text("100%", style: TextStyle(fontSize: 10, color: Colors.white),),
        ),
      )
        ],
      ),
    )
    ],);
  }

  /// Crea una pantalla que muestre una imagen cuadrada, que ocupe
  /// todo el ancho de la pantalla y cuya altura se ajuste automáticamente para mantener la
  /// relación de aspecto de la imagen. Debajo de la imagen, agrega un texto con el nombre de
  /// la imagen.

  Widget aspectRatioClassWork2(BuildContext buildContext) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1, // Proporción cuadrada
          child: Image.network(
              'https://images.unsplash.com/photo-1533319417894-6fbb331e5513?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
              fit: BoxFit.cover),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Imagen de prueba',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget sizedBoxExample(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent.shade200,
      alignment: Alignment.center,
      child: const SizedBox(
        width: 250,
        height: 250,
        child: Card(
            elevation: 6,
            child: Text(
              "Tarjeta",
              textAlign: TextAlign.center,
            )),
      ),
    );
  }

  Widget sizedBoxClassWork1(BuildContext buildContext) {
     return Container(
      color: Colors.lightBlueAccent.shade700,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const  SizedBox(
        width: 150,
        height: 150,
        child: Card(
            elevation: 6,
            child: Text(
              "Tarjeta",
              textAlign: TextAlign.center,
            )),
      ),
       SizedBox(
        width: 150,
        height: 150,
        child: Card(
            elevation: 6,
            child: Image.network(
              'https://images.unsplash.com/photo-1533319417894-6fbb331e5513?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
              fit: BoxFit.cover)),
      ),
       SizedBox(
        width: 150,
        height: 150,
        child: Card(
            elevation: 6,
            child: Image.network(
                      'https://plus.unsplash.com/premium_photo-1661914978519-52a11fe159a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bG9nb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 
                      fit: BoxFit.cover),),
      )
        ],
      ),
    );
  }

  /// Crea una pantalla que tenga un contenedor centrado en la pantalla,
  /// que contenga un texto con el tamaño de fuente de 30 píxeles y un color de fuente azul.
  /// El contenedor debe tener un ancho de 300 píxeles y un alto de 150 píxeles.

  Widget sizedBoxClassWork2(BuildContext buildContext) {
    return SizedBox(
        width: 300,
        height: 150,
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
        ));
  }

  Widget constrainedBox(BuildContext buildContext) {
    return         ConstrainedBox(
      constraints: BoxConstraints.loose(const Size(500, 500)),
      child: const Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown "
          "printer took a galley of type and scrambled it to make a type specimen book. It has survived not only "
          "five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
          "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more "
          "recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    );
  }

  Widget constrainedBoxClassWork1(BuildContext buildContext) {
    return Container();
  }

  /// Crea una pantalla de login que tenga un campo de texto para
  /// el correo electrónico y otro campo de texto para la contraseña.
  /// El ancho del campo de texto del correo electrónico debe ser de 250 píxeles
  /// y el campo de texto de la contraseña debe tener un ancho mínimo de 250 píxeles
  /// y un ancho máximo de 350 píxeles.

  Widget constrainedBoxClassWork2(BuildContext buildContext) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 250),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 250,
              maxWidth: 350,
            ),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}