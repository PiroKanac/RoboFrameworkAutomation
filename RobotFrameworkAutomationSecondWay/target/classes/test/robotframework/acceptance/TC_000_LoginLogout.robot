*** Settings ***
Library  Selenium2Library


*** Variables ***
    
       

*** Test Cases ***
TC_001 Login Logout Functionality
	${Application_URL}=  Set Variable  http://www.thetestingworld.com/testings
	${Browser_Name}=  Set Variable  Chrome
	Open Browser	${Application_URL}	${Browser_Name}
	Selenium2Library.Maximize Browser Window
	Close Browser



*** Keywords ***