// Desafio 5: Escreva uma função calculateShipping(zone: ShippingZone) que aceita um enum ShippingZone (national, international, local). Dentro da função, use um switch para retornar o custo de frete (ex: 50.0 para international, 10.0 para local).

enum ShippingZone {
  case national
  case international
  case local
}

func calculateShipping(zone: ShippingZone) -> Double {
  switch zone {
    case .national:
      return 39.90
    case .international:
      return 250.90
    case .local:
      return 10.90
  }
}

var shippingLocate = ShippingZone.national

let priceShipping = calculateShipping(zone: shippingLocate )


print(priceShipping)