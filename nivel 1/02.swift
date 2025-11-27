// Crie um enum
//  chamado HTTPMethod
//  com os casos get
// , post
// , put
// , delete
// . Defina o rawValue
//  de cada caso para ser sua versão em maiúsculas (e.g., get
//  deve ser "GET"). Imprima o rawValue
//  de cada método.


enum HTTPMethod: String, CaseIterable {
  case get = "GET"
  case post = "POST"
  case put = "PUT"
  case delete = "DELETE"
}


for method in HTTPMethod.allCases {
  print(method.rawValue)
}