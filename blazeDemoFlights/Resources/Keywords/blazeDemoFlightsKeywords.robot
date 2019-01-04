*** Keywords ***

#following keywords being used in the suite setup and teardown

#Open Home Page
#    Open browser    ${URL}   ${BROWSER}
#
#Close Browsers
#    Close All Browsers

Select Departure City
    [Arguments]      ${departure_city}
     Select From List By Value   xpath://select[@name='fromPort']  ${departure_city}

Select Destination City
    [Arguments]      ${destination_city}
    Select From List by Value   xpath://select[@name='toPort']    ${destination_city}

Search For Flights
    Click Button    css:input[type='submit']

There are available Flights
    #'@flights' is a list variable
    #'Get Web Elements' Returns list of WebElement objects matching the locator.
    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty     ${flights}

    #Variables can be scalar (with the $ prefix), lists (with the @ prefix, dictionaries (with the &
    #prefix) and environment (with the % prefix).
