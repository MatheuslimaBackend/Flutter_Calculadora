🧮 Calculadora Flutter - Projeto de Estudos

Um projeto de calculadora desenvolvido em Flutter seguindo as melhores práticas de desenvolvimento mobile, com interface inspirada no estilo vintage Windows 95/XP.
📋 Sobre o Projeto

Este projeto foi desenvolvido como parte de estudos em Flutter/Dart, implementando uma calculadora completamente funcional com interface visual moderna e lógica matemática robusta.
🚀 Funcionalidades

    ✅ Operações básicas: Adição, subtração, multiplicação, divisão

    ✅ Operações avançadas: Porcentagem e módulo

    ✅ Interface visual: Design vintage Windows 95/XP

    ✅ Visor inteligente: Exibe a expressão completa durante a digitação

    ✅ Gestão de estado: StatefulWidget com gerenciamento de estado eficiente

    ✅ Validações: Prevenção de erros comuns (múltiplos pontos, operações inválidas)

    ✅ Responsivo: Adaptável a diferentes tamanhos de tela

🛠️ Tecnologias Utilizadas

    Flutter 3.22.0

    Dart 3.0.0+

    auto_size_text ^3.0.0 - Para texto responsivo no visor

    📁 Estrutura do Projeto
    lib/
├── main.dart                 # Ponto de entrada da aplicação
├── telas/
│   └── calculadora.dart     # Tela principal (StatefulWidget)
├── componentes/
│   ├── visor.dart           # Componente do visor com AutoSizeText
│   ├── teclado.dart         # Componente do teclado completo
│   ├── botao.dart           # Componente de botão com estilo 3D
│   └── linha_botoes.dart    # Organizador de linhas de botões
└── modelos/
    └── memoria.dart         # Lógica matemática e gerenciamento de estado

🎨 Características da Interface
Design Vintage Windows 95/XP

    Cores: Paleta clássica de cinza (#C0C0C0) e azul Windows (#000080)

    Visor: Verde LCD com texto neon para efeito retro

    Botões: Estilo 3D com bordas em relevo

    Tipografia: Fontes similares às usadas no Windows clássico

Layout do Teclado
[  C  ] [ % ] [ / ]
[ 7 ] [ 8 ] [ 9 ] [ * ]
[ 4 ] [ 5 ] [ 6 ] [ - ]
[ 1 ] [ 2 ] [ 3 ] [ + ]
[    0    ] [ . ] [ = ]

⚙️ Instalação e Execução
Pré-requisitos

    Flutter SDK 3.0.0+

    Dart 3.0.0+

    Dispositivo/emulador ou navegador

    # Clonar o projeto (se aplicável)
git clone [url-do-repositorio]

# Navegar para o diretório do projeto
cd calculadora

# Instalar dependências
flutter pub get

# Executar no Linux desktop
flutter run -d linux

# Ou executar na web
flutter run -d chrome

# Ou executar no Android
flutter run -d android

🧩 Componentes Principais
Memoria (Modelo)

Gerencia toda a lógica matemática da calculadora:

    Buffer de operações [n1, operador, n2]

    Validação de entrada

    Cálculo de resultados

    Gestão de estado do visor

    Calculadora (Tela)

StatefulWidget que:

    Gerencia o estado da aplicação

    Integra todos os componentes

    Processa os callbacks dos botões

    Visor (Componente)

    Exibição responsiva de números

    Auto-ajuste de tamanho de fonte

    Estilo LCD vintage

    🔧 Personalização
Alterar Tema

Modifique as cores no arquivo calculadora.dart:
theme: ThemeData(
  primaryColor: Color(0xFF008080), // Cor principal
  // ... outras configurações
)

Alterar Cores dos Botões

Edite as constantes em botao.dart:
static const corPadrao = Color(0xFFC0C0C0);
static const corOperacao = Color(0xFFC0C0C0);

📚 Aprendizados Implementados

    Arquitetura: Separação clara entre interface e lógica

    State Management: Uso correto de StatefulWidget e setState()

    Componentização: Widgets reutilizáveis e modulares

    Gestão de Dependências: Uso do pubspec.yaml

    Debugging: Implementação de logs para desenvolvimento

    🐛 Solução de Problemas Comuns
Erro: "No pubspec.yaml file found"

# Certifique-se de estar no diretório raiz do projeto
cd calculadora
flutter pub get

Erro: "Target file not found"

Verifique se todos os arquivos .dart estão nas pastas corretas conforme a estrutura do projeto.

📄 Licença

Este projeto foi desenvolvido para fins educacionais.

👨‍💻 Desenvolvido por MATHEUS MOREIRA DE LIMA

Projeto desenvolvido seguindo as melhores práticas de Flutter e baseado em material didático estruturado.
