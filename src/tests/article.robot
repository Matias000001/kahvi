*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Application And Go To Add Reference Page

*** Test Cases ***
Set Correct Information For Article Reference
    Select Dropdown By Value    article
    Check Form Is Loaded
    Set Reference Id  1
    Set Author  Donald E. Knuth
    Set Title  Pythn Programming
    Set Journal  The Computer Journal
    Set Year  1984
    Set Number  2
    Set Pages  97-111
    Set DOI  knuth:1984
    Submit Information
    Adding Reference Should Succeed

Try Adding Reference With Missing Information
    Select Dropdown By Value    article
    Check Form Is Loaded
    Set Reference Id  2
    Set Title  Booktitle
    Set Journal  Science journal
    Set Year  1999
    Submit Information
    Adding Reference Should Fail

*** Keywords ***

Reset Application And Go To Add Reference Page
    Reset Application
    Go To Add Reference Page

Check Form Is Loaded
    Wait Until Keyword Succeeds    30s    2s    Page Should Contain Element    journal