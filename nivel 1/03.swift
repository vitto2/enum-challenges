// Crie um enum
//  chamado TrafficLight
//  (red
// , yellow
// , green
// ). Adicione uma Computed Property secondsDuration: Int
//  que retorna o tempo de duração em segundos para cada luz (e.g., 
// red = 30, 
// yellow = 3, 
// green = 45

enum TrafficLight {
  case red
  case yellow 
  case green 

  var secondsDuration: Int { 
    switch self {
      case .red:
      return 30
      case .green:
      return 45
      case .yellow:
      return 3
    }
  }
}


let lightRed = TrafficLight.red 

print(lightRed.secondsDuration)