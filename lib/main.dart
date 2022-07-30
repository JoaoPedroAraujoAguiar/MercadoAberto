import 'package:flutter/material.dart';
import 'Componentes/CampoPesquisa.dart';
import 'Componentes/Card_assinatura.dart';
import 'Componentes/Card_frete_gratis.dart';
import 'Componentes/botao_categoria.dart';
import 'Componentes/enviar_para.dart';

///teste
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // tirar a logo DEBUG do canto
      title: 'Mercado Aberto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffffd740),
          elevation: 0,
          leading: //deixa o ícone na esquerda e só cabe 1
              IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            const CampoPesquisa(),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],        
        
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              
              child: Row(                
                children: [
                  EnviarPara(),
                ],
              )
            ),   
                      
        ),

        body: SingleChildScrollView(
          child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [-15.0, 0.30],
                    colors: [Color(0xffffd740), Colors.white],
                  )),
                  child: Column(
                    children: [
                      Container(
                          //Image m
                          padding: const EdgeInsets.only(
                            top: 30.0,
                            bottom:15.0,
                            left: 30.0,
                            right: 30.0,
                          ),
                          child: Image.asset(
                            "../img/container.png",
                            alignment: Alignment.topCenter,
                          )
                      ),                   
        
                      cardassinatura(),
        
                      cardfretegratis(),   
        
        
        
                      Padding(padding: EdgeInsets.only(top:25.0,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BotaoCategoria(icone: Icons.phone_android_outlined, texto: "Recarregar"),
                          BotaoCategoria(icone: Icons.local_offer,texto: "Ofertas"),
                          BotaoCategoria(icone: Icons.shopping_basket_outlined,texto: "Mercado"),
                          BotaoCategoria(icone: Icons.directions_car_outlined, texto: "Veículos"),
                          BotaoCategoria(icone: Icons.add,texto: "Ver Mais"),
                        ],
                      ),
                    ]
                  )
                )
          ),
        )
    );
  }
}