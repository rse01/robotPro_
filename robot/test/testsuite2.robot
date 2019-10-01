*** Settings ***
Library    SeleniumLibrary    

Suite Setup    LOG    i am inside Test Suite
Suite Teardown    Log    I am suite teardown
Test Setup    Log    I am test setup    
Test Teardown    Log    I am inside Test   

Default Tags    sanity 
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...   
  
MysecondTest
    Log    im 2 test  
    Set Tags    regression0
    Remove Tags    regression0
    
Mytreetest  
    Log    i 3 testmessage    
     