*** Settings ***
Library  Selenium2Library


*** Variables ***
${Application_URL}   http://www.thetestingworld.com/testings    
${Browser_Name}  Chrome       

*** Test Cases ***
TC_001 Login Logout Functionality
	Open Browser	${Application_URL}	${Browser_Name}
	Selenium2Library.Maximize Browser Window
	Goto   https://www.google.com
	Go Back
	${Current_Location}=   Get Location
	Log to Console   ${Current_Location}



*** Keywords ***