***Settings*** 
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Selecionar opção pelo texto e validar pelo valor

    go to                           ${url}/dropdown
    select from list by label       class:avenger-list              Scott Lang
    ${selected}=                    get selected list value         class:avenger-list
    should be equal                 ${selected}                     7


Selecionar pelo Valor e validar pelo texto
    go to                           ${url}/dropdown
    select from list by value       id:dropdown            6
    ${selected}=                    get selected list label          id:dropdown
    should be equal                 ${selected}                      Loki