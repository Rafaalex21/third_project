void main() {
  escolherMeioTransporteEnum(transporte.andando);
  escolherMeioTransporteEnum(transporte.skate);
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print("vou de carro para o destino");
  } else if (locomocao == 1) {
    print('vou de moto para o destino ');
  } else {
    print('vou para o meu destino');
  }
}

void escolherMeioTransporteEnum(transporte locomocao) {
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

enum transporte {
  carro,
  bike,
  andando,
  moto,
  caminhao,
  skate;
}
