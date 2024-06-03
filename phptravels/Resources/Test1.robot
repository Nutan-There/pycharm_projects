*** Settings ***

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
*** Test Cases ***
 Test case 1
     [tags] Smoke
     log to console    This is test case 1

     Open browser    https://opensource-demo.orangehrmlive.com/    edge
     input text    //input[@name='username']  Admin
     input text    //input[@name='password']    admin123
     click element    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

     inputDict = {3:4,9:10,20:9,11:90}
     print("")

     sum=0



