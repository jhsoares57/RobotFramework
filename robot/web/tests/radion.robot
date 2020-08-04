***Settings*** 
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Selecionando por ID

    Go to                           ${url}/radios
    Select Radio Button            movies      cap
    Radio Button should be Set To   movies      cap

Selecionando por value

    Go to                           ${url}/radios
    Select Radio Button            movies      guardians
    Radio Button should be Set To   movies      guardians