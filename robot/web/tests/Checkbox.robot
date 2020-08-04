***Settings*** 
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Variables***
${check_thor}       id:thor
${check_ironman}    css:input[value='iron-man']
${check_pantera}    Xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Marcando opção com ID
    # Open Browser                    ${url}              chrome
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should be Selected     ${check_thor}
    # Sleep                           5 #Mantem o navegador aberto por 5 segundos
    # Close Browser

Marcando opção com CSS Selcector
    
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    Checkbox Should be Selected     ${check_ironman}
    # Sleep                           5 #Mantem o navegador aberto por 5 segundos
    
Marcando opção com Xpath
    [tags]          iroman
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_pantera}
    Checkbox Should be Selected     ${check_pantera}
    #  Sleep                           5    
    