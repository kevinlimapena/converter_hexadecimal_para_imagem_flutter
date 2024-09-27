import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:convert'; // Para converter de hex para bytes

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Exibir Imagem')),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: HexToImageWidget(),
          ),
        ),
      ),
    );
  }
}

class HexToImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Coloque o seu valor hexadecimal aqui
    var input = ""; // Pode ser uma string vazia ou nula

    // Verifica se o input é nulo ou vazio
    if (input == null || input.isEmpty) {
      return Center(
        child: Text(
          'Imagem não carregada ainda.',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      );
    }

    // Converte a string hexadecimal para bytes
    Uint8List bytes = hexToBytes(input);

    // Cria a imagem a partir dos bytes com BoxFit.fill
    return Image.memory(
      bytes,
      fit: BoxFit.fill, // Adiciona o fit para preencher o container
    );
  }

  // Função para converter hexadecimal para bytes
  Uint8List hexToBytes(String hex) {
    hex = hex.replaceAll("0x", ""); // Remove o prefixo "0x" se presente
    hex = hex.replaceAll(RegExp(r'\s+'), ''); // Remove espaços, se houver

    List<int> bytes = [];
    for (int i = 0; i < hex.length; i += 2) {
      bytes.add(int.parse(hex.substring(i, i + 2), radix: 16));
    }
    return Uint8List.fromList(bytes);
  }
}
