***Settings*** 
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Verificar o valor ao informar o numero da linha
    go to                           ${url}/tables
    table row should contain        id:actors   2   @vindiesel

Descobre a linha pelo texto chave e valida os demais valores
    go to                           ${url}/tables
    ${target}=                      get webElement                  xpath:.//tr[contains(., '@chadwickboseman')]
    Log                             ${target.text}
    log to console                  ${target.text}
    Should contain                  ${target.text}                  $ 700.000
    Should contain                  ${target.text}                  Pantera Negra