# 🛠️ Swift Proficiency: Enums no Mundo Real

## ⭐️ Visão Geral do Projeto

Este repositório é um **artefato de aprendizado prático** que documenta minha jornada no domínio das **Enumerations (`enum`)** em Swift. O foco não é apenas na sintaxe, mas na aplicação de `enum` como uma ferramenta essencial para **segurança de tipo**, **gerenciamento de estado** e **criação de código idiomático** no ecossistema Apple.

As soluções foram desenvolvidas através de um programa de mentoria focado em simular requisitos e boas práticas de um ambiente de desenvolvimento **Júnior/Pleno**.

### 💡 Por que Enums?

Enums são cruciais em Swift para definir conjuntos finitos de estados (Status de API, Tipos de Erro, Opções de UI). A principal motivação deste módulo é demonstrar a habilidade de:

1.  **Eliminar Strings Mágicas:** Substituir strings e números soltos por tipos seguros.
2.  **Gerenciar Estado Complexo:** Usar **Associated Values** para anexar dados contextuais a um estado (ex: um erro acompanhado de sua mensagem e código).
3.  **Orientação a Protocolos:** Integrar `enum` com `Protocols` e `Error Handling` para desacoplamento e robustez.

---

## 🎯 Ganhos Técnicos e Habilidades Demonstradas

Este projeto solidifica diversas competências valorizadas em *code reviews* e projetos de larga escala:

### 1. Modelagem de Dados e Estados (Value Types)
* **Associated Values (Payloads):** Uso avançado de `case let` e `switch` para extrair dados específicos, modelando resultados de rede (e.g., `APIResponse.failure(code: Int, description: String)`).
* **Raw Values e Failable Initializers:** Conversão segura de tipos brutos (`String`, `Int`) de fontes externas (como JSONs) para tipos Swift seguros, utilizando `init?(rawValue:)` e tratamento de `Optionals`.

### 2. Arquitetura e Boas Práticas (Nível Júnior/Pleno)
* **Error Handling Customizado:** Criação de tipos de erro que se conformam ao protocolo `Error` (`FileError.permissionDenied`), garantindo um fluxo de `do-catch` limpo e rastreável.
* **Conformidade a Protocolos:** Implementação de protocolos (`HasIcon`) em `enum` para definir comportamentos em diferentes casos (Orientação a Protocolos).
* **Namespacing:** Uso de `struct` com `enum` aninhado para organizar constantes e tipos dentro de um módulo (`Settings.ScreenType`).

### 3. Código Idiomático Swift
* **Computed Properties:** Uso de `var` dentro de `enum` para adicionar lógica de apresentação (e.g., `TrafficLight.red.secondsDuration`).
* **Optional Binding Avançado:** Uso do padrão `if case let` para inspeção precisa de um caso específico de `enum` e extração de seus Associated Values, incluindo o tratamento de optionals aninhados.
* **Codable Integration:** Demonstração da conformidade automática de `enum` ao protocolo `Codable` para parsing de JSON limpo.

---

## 🛠️ Desafios Chave (Destaques)

Os desafios a seguir representam o nível de complexidade típico de um projeto de mercado:

| # | Tópico | Descrição da Solução |
| :---: | :--- | :--- |
| **6** | **Network Response** | Modelagem de um resultado de API robusto usando `enum` com Associated Values para sucesso (dados) e falha (código de erro). |
| **11** | **Custom Error Handling** | Criação de um `enum` que atua como um sistema de erros coeso, implementando o protocolo `Error` e sendo lançado/capturado em um bloco `do-catch`. |
| **13** | **Protocol-Oriented** | Uso de um protocolo (`HasIcon`) para forçar o `enum` (`SidebarItem`) a fornecer nomes de ícones, promovendo a reutilização e o desacoplamento. |
| **15** | **Codable** | Decodificação de um JSON complexo diretamente para um `enum` (`PaymentMethod`), aproveitando a implementação automática do protocolo `Codable` pelo Swift. |

## 🔗 Próximos Passos & Contato

Estou ativamente aplicando este conhecimento em projetos de desenvolvimento iOS com SwiftUI e MVVM.

* **Tecnologias:** Swift, Xcode, Playgrounds.
* **LinkedIn:** [https://www.linkedin.com/in/vitto-ios/]
* **GitHub:** Mais projetos de Swift e iOS em meu perfil.

Sinta-se à vontade para me contatar para oportunidades ou *code reviews*.
