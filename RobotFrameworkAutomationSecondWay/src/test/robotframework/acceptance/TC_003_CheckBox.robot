*** Settings ***
Library  Selenium2Library


*** Variables ***
${Application_URL}   http://www.thetestingworld.com/testings    
${Browser_Name}  Chrome       

*** Test Cases ***
TC_001 Login Logout Functionality
	Open Browser	${Application_URL}	${Browser_Name}
	Selenium2Library.Maximize Browser Window
	Select Checkbox   name=terms
	Sleep   10seconds
	Unselect Checkbox   name=terms



*** Keywords ***