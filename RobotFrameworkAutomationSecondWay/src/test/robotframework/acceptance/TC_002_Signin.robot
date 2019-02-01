*** Settings ***
Library  Selenium2Library


*** Variables ***
${Application_URL}   http://www.thetestingworld.com/testings    
${Browser_Name}  Chrome       

*** Test Cases ***
TC_001 Login Logout Functionality
	Open Browser	${Application_URL}	${Browser_Name}
	Selenium2Library.Maximize Browser Window
	Input Text  name=fld_username  Helloworld
	Input Text  xpath=//input[@name='fld_email']   abcd@yahoo.com
	Input Text  name=fld_username  abcdxyz
	Clear Element Text  xpath=//input[@name='fld_email']
	Click Button   xpath=//input[@type='submit']
	Click Element   xpath=//input[@type='submit']
	Click Element At Coordinates   xpath=//input[@type='submit']  2/5



*** Keywords ***