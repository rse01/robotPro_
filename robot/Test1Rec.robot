*** Settings ***
Documentation    TNR Recette.
Library    SeleniumLibrary   

*** Variables ***
${URL}    http://recette-frontend.opera-tdv1.lb.build-klif.cloud.maif.local/#/login
@{CREDENTIALS}    85005K    Maif1234
&{LGOINDATA}      username=85005K    password=Maif1234

*** Test Cases ***
TestPivot
    [Tags]    PIVOT
    #[Documentation]    TestPivot
    Open Browser      ${URL}     chrome
    Set Browser Implicit Wait    5
    LoginKW
    Input Text      xpath=//input[@placeholder='_ __ _______ _']    M123456789G    
    Click Button    xpath=//button[@class='btn btn-primary pull-right btn btn-default']     
    Close Browser
    Log               Test completed  
creerRecette
    [Tags]    PIVOT
    #[Documentation]    TestPivot
    Open Browser      ${URL}     chrome
    Set Browser Implicit Wait    5
    LoginKW
    Input Text      xpath=//input[@placeholder='_ __ _______ _']    M123456789G    
    Click Button    xpath=//button[@class='btn btn-primary pull-right btn btn-default'] 
    #acceder au IHM creer recette
    Click Button    xpath=//button[@class='btn btn-primary pull-right btn btn-default']  
    #POP-UP "Encaisser"
    Select Radio Button    //label[contains(text(),'Autres Encaissements')]  and @name='group_name' and (@value='value' or @id='value')]
    Click Button    xpath=//button[@class='btn-primary confirm btn btn-default']         
    Close Browser
    Log               Test completed 
    
encaisserRecette
    [Tags]    PIVOT
    #[Documentation]    TestPivot
    Open Browser      ${URL}     chrome
    Set Browser Implicit Wait    5
    LoginKW
    Input Text      xpath=//input[@placeholder='_ __ _______ _']    M123456789G    
    Click Button    xpath=//button[@class='btn btn-primary pull-right btn btn-default'] 
    #acceder au IHM creer recette
    Click Button    xpath=//button[@class='btn btn-primary pull-right btn btn-default']  
    #POP-UP "Encaisser"
    Select Radio Button    //label[contains(text(),'Autres Encaissements')]  and @name='group_name' and (@value='value' or @id='value')]
    Click Button    xpath=//button[@class='btn-primary confirm btn btn-default'] 
    #saisir recette
    Input Text    xpath=//fieldset[@class='fieldset MontantRecette']//tr[1]//td[2]//div[1]//input[1]    10 
    Input Text    xpath=//tr[3]//td[3]//div[1]//input[1]    10   
    Click Button    xpath=//button[@class='btn btn-primary pull-right btn btn-default']                 
    Close Browser
    Log               Test completed 
    
*** Keywords ***
LoginKW
        Input Text        xpath=//input[@id='login']       @{CREDENTIALS}[0]
        Input Password    xpath=//input[@id='password']    &{LGOINDATA}[password]   
        Click Button      xpath=//button[@id='submit'] 