// Usando o enum ProductDetailState do artigo (loading, loaded, error), adicione um método shouldShowActivityIndicator: Bool que retorna true se o estado for .loading e false para os outros casos.


enum ProductDetailState {
  case loading
  case loaded
  case error

  var shouldShowActivityIndicator: Bool {
    switch self {
      case .loading:
        return true
      case .loaded, .error: 
        return false
    }
  }
}

let loading = ProductDetailState.loading
print(loading.shouldShowActivityIndicator())