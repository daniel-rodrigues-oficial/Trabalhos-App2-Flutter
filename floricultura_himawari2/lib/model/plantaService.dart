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
        descricao: "Lorem Ipsum é simplesmente um texto fictício\n da indústria"
        "de impressão e composição.\n Lorem Ipsum tem sido o texto fictício padrão"
        "\n da indústria desde os anos 1500,\n quando um impressor desconhecido pegou"
        " \numa galé do tipo e embaralhou para\n fazer um livro de amostra de tipos."
        "\n Ele sobreviveu não apenas cinco séculos,\n mas também ao salto para a"
        " composição eletrônica,\n permanecendo essencialmente inalterado."
        " \nFoi popularizado na década de 1960\n com o lançamento de folhas de"
        "\n Letraset contendo passagens de Lorem Ipsum e,\n mais recentemente," 
      ),

      Planta(
        id: 2,
        foto: "img/fotos/fundo.jpg",
        nome: "Lirio",
        tamanho: 1.8,
        descricao: "Lorem Ipsum é simplesmente um texto fictício\n da indústria"
        "de impressão e composição.\n Lorem Ipsum tem sido o texto fictício padrão"
        "\n da indústria desde os anos 1500,\n quando um impressor desconhecido pegou"
        " \numa galé do tipo e embaralhou para\n fazer um livro de amostra de tipos."
        "\n Ele sobreviveu não apenas cinco séculos,\n mas também ao salto para a"
        " composição eletrônica,\n permanecendo essencialmente inalterado."
        " \nFoi popularizado na década de 1960\n com o lançamento de folhas de"
        "\n Letraset contendo passagens de Lorem Ipsum e,\n mais recentemente,"  
      ),

      Planta(
        id: 3,
        foto: "img/fotos/fundo.jpg",
        nome: "Girassol",
        tamanho: 2.5,
        descricao: "Lorem Ipsum é simplesmente um texto fictício\nda indústria"
        "de impressão e composição.\nLorem Ipsum tem sido o texto fictício padrão"
        "\nda indústria desde os anos 1500,\nquando um impressor desconhecido pegou"
        " \numa galé do tipo e embaralhou para\nfazer um livro de amostra de tipos."
        "\nEle sobreviveu não apenas cinco séculos,\nmas também ao salto para a"
        " composição eletrônica,\npermanecendo essencialmente inalterado."
        " \nFoi popularizado na década de 1960\ncom o lançamento de folhas de"
        "\nLetraset contendo passagens de Lorem Ipsum e,\nmais recentemente,"  
      ),
    ];
    return planta;
  }
}