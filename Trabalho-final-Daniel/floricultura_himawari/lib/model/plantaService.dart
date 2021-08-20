import 'package:floricultura_himawari/model/planta.dart';

class PlantaService {
  List listarPlantas(){

    //cria a lista de de plantas
    List <Planta> planta = [
        Planta(
        id: 1,
        foto: "img/fotos/fundo.jpg",
        nome: "Rosa",
        tamanho: 1.5,
        descricao: "Lorem Ipsum é simplesmente\n um texto fictício da indústria"
        "\n de impressão e composição.\n Lorem Ipsum tem sido o texto fictício\n padrão"
        "da indústria desde os anos 1500,\n quando um impressor desconhecido pegou"
        " \n uma galé do tipo e embaralhou para\n fazer um livro de amostra de tipos."
      ),

      Planta(
        id: 2,
        foto: "img/fotos/fundo.jpg",
        nome: "Lirio",
        tamanho: 1.8,
        descricao:"Lorem Ipsum é simplesmente \num texto fictício da indústria"
        "\n de impressão e composição.\nLorem Ipsum tem sido o texto fictício\n padrão"
        "da indústria desde os anos 1500,\nquando um impressor desconhecido pegou"
        " \numa galé do tipo e embaralhou para\nfazer um livro de amostra de tipos."
      ),

      Planta(
        id: 3,
        foto: "img/fotos/fundo.jpg",
        nome: "Girassol",
        tamanho: 2.5,
        descricao: "Lorem Ipsum é simplesmente \num texto fictício da indústria"
        "\n de impressão e composição.\nLorem Ipsum tem sido o texto fictício\n padrão"
        "da indústria desde os anos 1500,\nquando um impressor desconhecido pegou"
        " \numa galé do tipo e embaralhou para\nfazer um livro de amostra de tipos."
      ),
    ];
    return planta;
  }
}