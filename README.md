# Automation Tests | Challenge Robot 

Descrição

Este repositório contém testes automatizados criados usando o [Robot Framework](https://robotframework.org/). O foco do projeto é testar funcionalidades básicas de uma aplicação web. Utilizamos a biblioteca [SeleniumLibrary](http://robotframework.org/SeleniumLibrary/) para interagir com o navegador, a [FakerLibrary](https://github.com/guykisel/robotframework-faker) para gerar massa de dados, como emails e dados cadastrais, [SikuliLibrary](https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html) para automação de interfaces gráficas por meio de reconhecimento de imagem, [AutoRecorder](https://raw.githack.com/sebastianciupinski/robotframework-autorecorder/master/docs/AutoRecorder.html) para gravar interações do usuário, [OperatingSystem](https://robotframework.org/robotframework/latest/libraries/OperatingSystem.html) para executar comandos e manipular o sistema operacional,[String](https://robotframework.org/robotframework/latest/libraries/String.html) para manipulação de strings, [DateTime](https://robotframework.org/robotframework/latest/libraries/DateTime.html) para operações com datas e horas, [JSONLibrary](https://github.com/robotframework-thailand/robotframework-jsonlibrary) para manipulação de dados em formato JSON, e [Process](https://robotframework.org/robotframework/latest/libraries/Process.html) para executar comandos externos e capturar saídas, permitindo a geração de relatórios e a captura de telas.

O objetivo é garantir que o sistema possa lidar com uma variedade de cenários e que esteja operando corretamente.

## Principais Funcionalidades 

- **Teste de Login:**
  - Verificação de login bem-sucedido com credenciais válidas.

- **Teste de Busca:**
  - Busca por produtos com palavras-chave válidas.

- **Teste de Adição de Endereço:**
  - Validação da adição do primeiro endereço com credenciais corretas.

- **Teste de Alteração de Dados:**
  - Verificação da atualização de informações, como endereço e dados pessoais.

- **Teste de Contato com a Loja:**
  - Validação do envio de mensagens com preenchimento correto dos campos obrigatórios
  
- **Geração e Salvamento Automático de Dados:**
  - Criação de emails e dados cadastrais aleatórios usando FakerLibrary para testes repetidos. 
  - Salvamento automático dos dados de cada cliente criado.

## Tecnologias Utilizadas

- [RobotFramework](https://robotframework.org/)
- [SeleniumLibrary](http://robotframework.org/SeleniumLibrary/)
- [FakerLibrary](https://github.com/guykisel/robotframework-faker)
- [Python](https://www.python.org/)
- [SikuliLibrary](https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html)
- [AutoRecorder](https://raw.githack.com/sebastianciupinski/robotframework-autorecorder/master/docs/AutoRecorder.html)
- [OperatingSystem](https://robotframework.org/robotframework/latest/libraries/OperatingSystem.html)
- [String](https://robotframework.org/robotframework/latest/libraries/String.html)
- [DateTime](https://robotframework.org/robotframework/latest/libraries/DateTime.html)
- [JSONLibrary](https://github.com/robotframework-thailand/robotframework-jsonlibrary)
- [Process](https://robotframework.org/robotframework/latest/libraries/Process.html)

## Pré-requisitos

Certifique-se de ter o Python, Java e Chromedriver instalado na sua máquina. Você pode verificar a versão do Python e Java usando o comando:

```bash
python --version
java --version

```
## Caso não tenha na sua máquina o python, java ou/e chromedriver, acesse o link logo abaixo do tutorial para instalar:

- [python](https://youtu.be/0pG4NrucQR4?si=0u5DeS3FtRhN-326)
- [chromedriver](https://youtu.be/Ot10qzrb13c?si=kC7u2FMFcSlB1G4c)
- [java](https://www.youtube.com/watch?v=laC0fiI-IOM)

```bash

## Clone o repositório para a sua máquina local:
git clone https://github.com/CiCi0100/challengeRobot_test-automation.git

## Acesse a pasta:
cd challengeRobot_test-automation

## Instale as dependências:
 pip install -r requirements.txt

## Execute os testes:
  robot -d results tests/test_suite_success.robot


```

## Estrutura do Projeto 

<br> challengeRobot_test-automation/ 
<br> | |-- framework/
<br> | | |-- functionals.robot
<br> | | |-- files
<br> | | | |-- client-00-00-0000-00-00-00.txt
<br> | | |-- library
<br> | | | |-- __pycache__
<br> | | | |-- generator.py
<br> |-- steps/
<br> | | | -- test_case_steps.robot
<br> | |-- tests/
<br> | | |-- test_suite_success.robot
<br> |-- README.md
<br> |-- requirements.txt


<br> - framework: Inclui arquivos de recursos que auxiliam os testes.
<br> - functionals.robot: Métodos auxiliares para os testes, incluindo criação de clientes e armazenamento de dados.
<br> - files: Contém arquivos com dados de cada cliente criado.
<br> - library: Contém arquivo com métodos auxiliares para a pasta functionals.robot, desenvolvidos em python.
<br> - page_objects: Variáveis e elementos que facilitam os testes.
<br> - results: Relatórios gerados pelo Robot Framework.
<br> - steps: Passos e definições dos testes.
<br> - tests: Contém suítes de testes:
<br> -- test_suite_success.robot: Casos de teste esperados para passar.
<br> - README.md: Documentação do projeto.


## Contato
<br> Para mais informações, entre em contato com Ciara pelo email: Ciarade0206@gmail.com </br>

