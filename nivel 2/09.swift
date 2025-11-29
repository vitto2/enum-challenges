// Desafio 9: Você recebeu uma função antiga que aceita um Int (1, 2, 3) para definir o nível de prioridade. Crie um enum TaskPriority (high, medium, low) com Raw Values (1, 2, 3). Refatore a função para aceitar o TaskPriority e use a inicialização por rawValue para converter o Int original para o novo enum antes de processá-lo. (O objetivo é mostrar a migração segura de um sistema antigo).
import Foundation

enum TaskPriority: Int {
  case high = 1
  case medium = 2
  case low = 3
}

func processTaskModern(taskID: UUID, priority: TaskPriority) {  
  switch priority {
  case .high: 
      print("Tarefa \(taskID) enviada para a fila de ALTA prioridade.")
  case .medium:
      print("Tarefa \(taskID) enviada para a fila de MÉDIA prioridade.")
  case .low:
      print("Tarefa \(taskID) enviada para a fila de BAIXA prioridade.")
  }
}

let task1ID = UUID()
let TaskPriority1 = TaskPriority.high


processTaskModern(taskID:task1ID, priority: TaskPriority1)