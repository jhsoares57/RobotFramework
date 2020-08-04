*** Settings ***
Library     app.py

*** Test Case***
Deve retornar mensagem de boas vindas
    ${result}=          welcone     Hugo
    # Log To Console      ${result}
    Should Be Equal     ${result}   Olá Hugo, Bem vindo!