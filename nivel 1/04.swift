enum AppTheme: String {
  case light = "Claro"
  case dark = "Escuro"
  case system = "Sistema"

}


func getSafeTheme(storedValue: String) { 
  if let appThemeUser = AppTheme(rawValue: storedValue) {
    print("Tema escolhido: \(appThemeUser)")
  } else {
    print("Ocorreu um erro ao selecionar o tema. Talvez usar o tema padrão do sistema seja uma boa opção.")
  }
}

getSafeTheme(storedValue: "Escuro")
getSafeTheme(storedValue: "Dark")
getSafeTheme(storedValue: "Sistema")
getSafeTheme(storedValue: "Pink")