*** Settings ***
Library  SeleniumLibrary

Variables  ../Resources/Variables/blazeDemoFlightsVariables.yaml    #contains variables
Resource  ../Resources/Keywords/blazeDemoFlightsKeywords.robot      #contains resources such as keywords,etc

Documentation  To run test case: python -m robot -d Results blazeDemoFlights.robot . N.B Must be in the "Tests" directory to run above command. This is a documentation - it can only be used once.

#setup and teardown used before and after tests are executed
Suite Setup  Open browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers

*** Test Cases ***
The user can search for flight

    #'[Tags]' assigns a logical group to a test case
    #can be used to execute tests only with the specified tag
    [Tags]          search_flights

    Select Departure City   Paris
    Select Destination City     London
    Search For Flights
    There are available Flights
