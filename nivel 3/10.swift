// Crie um enum chamado UserAction com casos: .tap(elementID: String), .swipe(direction: String), .error(code: Int, description: String). Crie uma lista de ações e use um switch para simular o tratamento de cada ação, imprimindo todos os valores associados.

enum UserAction {
  case tap(elementID: String)
  case swipe(direction: String)
  case error(code: Int, description: String)
}

let userActionLog: [UserAction] = [
    .tap(elementID: "button-login"), 
    .swipe(direction: "Up"),
    .error(code: 401, description: "Token de sessão expirado"), 
    .tap(elementID: "nav-bar-settings"),
    .error(code: 500, description: "Falha interna do servidor")
]

for action in userActionLog {
switch action {
  case .tap(let data): 
      print(data)
  case .swipe(let direction): 
      print(direction)
  case .error(let code, let description): 
      print("código: \(code) descrição: \(description)")
}
}