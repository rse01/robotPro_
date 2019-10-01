*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
MyFirstTest
    Open Browser     http://blazedemo.com/index.php    chrome
    #Set Browser Implicit Wait    5  
    Select From List By Value    xpath=//select[@name='fromPort']    Paris
    Select From List By Value    xpath=//select[@name='toPort']      Dublin
    Click Button                 xpath=//input[@class='btn btn-primary']    
    #Input Text       name=q                Automation step by step
      #Click Button    name=btnK   
    Sleep    2    
    Close Browser   
    Log    Test Completed
 SampleLoginTest
        [Documentation]        this is a sample login test
        Open Browser      ${URL}     chrome
        Set Browser Implicit Wait    5
        Select From List By Value    xpath=//select[@name='fromPort']    Paris
        Select From List By Value    xpath=//select[@name='toPort']      Dublin
        Click Button                 xpath=//input[@class='btn btn-primary']   
        Click Element                link=home 
        #Close Browser
        Log               Test completed  
      
extraLoginTest
        [Documentation]        this is a sample login test
        Open Browser      ${URL}     chrome
        Set Browser Implicit Wait    5
        Select From List By Value    xpath=//select[@name='fromPort']    Paris
        Select From List By Value    xpath=//select[@name='toPort']      Dublin
        Click Button                 xpath=//input[@class='btn btn-primary']   
        Click Button                 xpath=//tr[1]//td[1]//input[1] 
        #Close Browser
        Log               Test completed  
        
CmplexLoginTest
        [Documentation]        this is a sample login test
        Open Browser      ${URL}     chrome
        Set Browser Implicit Wait    5
        Select From List By Value    xpath=//select[@name='fromPort']    Paris
        Select From List By Value    xpath=//select[@name='toPort']      Dublin
        Click Button                 xpath=//input[@class='btn btn-primary']   
        Click Button                 xpath=//tr[1]//td[1]//input[1] 
        Input Text       xpath=//input[@id='inputName']                Automation
        Input Text    xpath=//input[@id='address']    avenida    
        Input Text    xpath=//input[@id='city']    cusco 
        Input Text    xpath=//input[@id='state']    poitiers 
        Input Text    xpath=//input[@id='zipCode']    86000   
        Select From List By Label    xpath=//select[@id='cardType']    American Express          
        Input Text    xpath=//input[@id='creditCardNumber']    122344  
        Input Text    xpath=//input[@id='creditCardMonth']    10    
        Input Text    xpath=//input[@id='creditCardYear']    1988
        Select Checkbox    xpath=//input[@id='rememberMe'] 
        Click Button    xpath=//input[@class='btn btn-primary']     
          
              
        #Close Browser
        Log               Test completed      
        
*** Variables ***
${URL}    http://blazedemo.com/index.php
@{CREDENTIALS}    Admin    admin123
&{LGOINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKW
        Input Text        id=txtUsername    @{CREDENTIALS}[0]
        Input Password    id=txtPassword    &{LGOINDATA}[password]   
        Click Button      id=btnLogin 
