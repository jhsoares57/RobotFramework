***Settings*** 
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Login com sucesso
    go to                       ${url}/login
    login with                  stark     jarvis!

    should see Logged user      Tony Stark

Senha Invalida
    [tags]                                 loginerror
    go to                                  ${url}/login
    login with                             stark     123
    should contain login alert             Senha é invalida!

    # page should contain      Senha é invalida!

Usuário não existe
    [tags]                           loginerrorUsuario
    go to                            ${url}/login
    login with                       abc     123
    should contain login alert       O usuário informado não está cadastrado!

***Keywords***
login with
    [Arguments]    ${uname}        ${pass}

    input text               css:input[name=username]    ${uname}
    input text               css:input[name=password]    ${pass}
    click element            Class:btn-login

should contain login alert
    [Arguments]     ${ExpectMessage}
    ${message}=              get webelement              id:flash
    should contain          ${message.text}              ${ExpectMessage}

should see Logged user
    [Arguments]     ${fullname}
    Page should contain      Olá, ${fullname}. Você acessou a área logada!