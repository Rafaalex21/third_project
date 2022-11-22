import 'transporte.dart';
import 'viagem.dart';

void main() {
  escolherMeioTransporte(transporte.andando);
  escolherMeioTransporte(transporte.skate);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Minas gerais", registrosVisitados);
  registrosVisitados = registrarDestinos("Mato grosso", registrosVisitados);
  print(registrosVisitados);
  print(registrosVisitados.contains('São Paulo'));
  print(registrosVisitados.contains('Rio de Janeiro'));

  Map<String, dynamic> registrarPrecos = {};
  registrarPrecos['São Paulo'] = 1200;
  registrarPrecos['Minas gerais'] = 900;
  print(registrarPrecos);
  print(registrarPrecos['Minas gerais']);
  registrarPrecos.remove('São Paulo');
  print(registrarPrecos);
  print(consultarNdeViagens);
}

Set<String> registrarDestinos(String destino, Set<String> database) {
  database.add(destino);
  return database;
}

void escolherMeioTransporte(transporte locomocao) {
  switch (locomocao) {
    case transporte.carro:
      print('Vou de carro para meu destino');
      break;
    case transporte.moto:
      print('vou de moto para meu destino');
      break;
    case transporte.andando:
      print('vou andando até meu destino');
      break;
    case transporte.caminhao:
      print('vou pegar uma carona de caminhão');
      break;
    case transporte.bike:
      print('vou de bike até meu destino');
      break;
    default:
      print('estou indo para meu destino');
      break;
  }
}



int get consultarNdeViagens{
  return Viajar.viagens;
}