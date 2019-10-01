*** Settings ***
Library    SeleniumLibrary    

Suite Setup    LOG    i am inside Test Suite
Suite Teardown    Log    I am suite teardown
Test Setup    Log    I am test setup    
Test Teardown    Log    I am inside Test   

Default Tags    sanity 
*** Test Cases ***
MyFirstTest
    Log    Hello World...    
    
FirstSeleniumTest
    Open Browser     https://google.com    chrome
    Set Browser Implicit Wait    5  
    Input Text       name=q                Automation step by step
    Press Keys    name=q    ENTER
    #Click Button    name=btnK   
    Sleep    2    
    Close Browser   
    Log    Test Completed
 SampleLoginTest
        [Documentation]        this is a sample login test
        Open Browser      ${URL}     chrome
        Set Browser Implicit Wait    5
        LoginKW   
        Click Element     id=welcome
        Click Element     link=Logout 
        Close Browser
        Log               Test completed      
        
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com
@{CREDENTIALS}    Admin    admin123
&{LGOINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKW
        Input Text        id=txtUsername    @{CREDENTIALS}[0]
        Input Password    id=txtPassword    &{LGOINDATA}[password]   
        Click Button      id=btnLogin 


        
                    
        
        
    