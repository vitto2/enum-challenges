// Crie um enum chamado LogLevel com os casos: .info, .warning, .error, .debug. Escreva uma função que aceita um LogLevel e imprime uma mensagem formatada, usando switch para adicionar um emoji diferente para cada caso.


enum LogLevel { 
  case info
  case warning
  case error 
  case debug
}

func messageLogLevel(log: LogLevel) {
  switch log { 
    case .info: 
          print("🧐")
    case .warning:
          print("🚨")
    case .error: 
          print("🆘")
    case .debug: 
          print("⚠️")
  }
}


messageLogLevel(log: .error)