// Crie um enum
//  chamado APIResponse
// . Os casos são: .success(data: [String])
//  e .failure(statusCode: Int)
// . Escreva uma função que simule a chamada de API e retorna um APIResponse
// . No final, use um switch
//  para imprimir o array de dados ou o código de erro.

//Enum é um tipo de dado que define um grupo de valores relacionados
enum APIResponse {
    case success(data: [String])
    case failure(statusCode: Int)
}

let apiInstance = APIResponse.success(data: ["header", "etc", "Tal"])
let apiInstance2 = APIResponse.failure(statusCode: 404)

func handleResponse(response: APIResponse) {
  switch response {
    case .success(let data): 
        print("Sucesso! Dados: \(data)")
    case .failure(let statusCode): 
        print("Erro! Código: \(statusCode)")
  }

}


handleResponse(response: apiInstance)
handleResponse(response: apiInstance2 )
