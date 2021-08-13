*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com/
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Case ***
CN-1 Validando opção utilizando ID
    Open Browser                    ${url}      chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Close Browser

CN-2 Validando Checkbox com localizador utilizadno CSS Selector
    Open Browser                    ${url}      chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron} 
    Checkbox Should Be Selected     ${check_iron} 
    Close Browser

CN-3 Validando Checkbox com Xpath da forma correta ;)...
    [tags]      ironman
    Open Browser                    ${url}      chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           2
    Close Browser