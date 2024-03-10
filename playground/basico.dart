void main() {
  print('Hello, World!');

  //Comentários
  /*
  Comentários
  Várias
  Linhas
   */
  var nome = 'Fernando Dias';
  var idade = 36;
  var altura = 1.74;
  var listaNomes = ['Lucas', 'Ana', 'João', 'Simone'];
  var listadynamic = [
    'Lucas',
    32,
    1.54,
    {'id': 1, 'valor': 'Fulano'},
    [1, 2, 3, 4]
  ];
  var objMap = {'id': 1, 'url': 'http://google.com.br'};

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(altura.runtimeType);
  print(listaNomes.runtimeType);
  print(listadynamic.runtimeType);
  print(objMap.runtimeType);

  if (idade >= 18) {
    print('É maior de idade');
  } else if (idade >= 65) {
    print('É Idoso');
  } else {
    print('É criança ou menor');
  }

  for (final nome in listaNomes) {
    print('Meu nome é: ${nome}');
  }

  for (int mes = 1; mes <= 12; mes++) {
    print(mes);
  }

  while (idade < 20) {
    idade += 1;
  }

  String contenarComVirgula(String valor1, String valor2) {
    return '${valor1} , ${valor2} ';
  }

  var variavelFuncao = contenarComVirgula('Fernando', 'Professor');

  print(variavelFuncao);

  var listaFiltro =
      listadynamic.where((item) => item.runtimeType == String).toList();
  print(listaFiltro);

  Eletronico eletronico = Eletronico(220, false);
  eletronico.ligar();
  print(eletronico.estaLigado());

  eletronico = Geladeira(110, false);
  print(eletronico.estaLigado());
  eletronico.ligar();
  print(eletronico.estaLigado());

  (eletronico as Geladeira).refrigar();
  //FALAR de MIXIN
  //Falar de interface

  Televisao tv = Televisao(220, true);
  tv.conectarAo5G();
  //Falar de construtor opcional e nomeado, Fazer no eletronico

  //ENUMS
}

//Criar Interface Dispositivo
//Metodo override marca
//SYNC
// Future<void> printWithDelay(String message) async {
//   await Future.delayed(oneSecond);
//   print(message);
// }

class Eletronico {
  int? voltagem;
  bool? ligado;

  Eletronico(this.voltagem, this.ligado);

  bool estaLigado() {
    return ligado ?? false;
  }

  void ligar() {
    ligado = true;
  }

  void desligar() {
    ligado = false;
  }
}

class Geladeira extends Eletronico {
  Geladeira(super.voltagem, super.ligado);

  void refrigar() {
    print("Estou refrigrando!");
  }

  void congelar() {
    print("Estou congelando!");
  }

  @override
  void ligar() {
    super.ligar();
    refrigar();
  }
}

class Televisao extends Eletronico with Conexao {
  Televisao(super.voltagem, super.ligado);

  void assitir() {
    print("assitindo");
  }

  void conectarWifi() {
    print("Conectando a Internet...");
  }

  void desconectarWifi() {
    print("Desconectando a Internet...");
  }

  @override
  void desligar() {
    desconectarWifi();
    super.desligar();
  }
}

mixin Conexao {
  void conectarAo5G() {
    print("Conecatando ao 5G");
  }
}
