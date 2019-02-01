*** Settings ***
Library  Selenium2Library


*** Variables ***
${Application_URL}   http://www.thetestingworld.com/testings    
${Browser_Name}  Chrome       

*** Test Cases ***
TC_001 Login Logout Functionality
	Open Browser	${Application_URL}	${Browser_Name}
	Selenium2Library.Maximize Browser Window
	Select From List By Index   id=countryId  6
	Sleep   5seconds
	Select From List By Value   id=countryId  13
	Sleep   5seconds
	Select From List By Label   id=countryId  India



*** Keywords ***