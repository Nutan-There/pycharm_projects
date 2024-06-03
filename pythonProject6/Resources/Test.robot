*** Variables ***
@{my_list}    Apple    Banana    Orange

*** Test Cases ***
Test Case 1
    Log    ${my_list}   # Pass: Logs the whole list object
    Log Many    @{my_list}   # Pass: Logs the items of the list object
    Log Many    ${my_list}   # Pass: Logs the whole list object

    Log    ${my_list}[0]    # Pass: Logs the first item of the list object

                            # The value `Banana` for the argument `level` is not allowed.

    FOR    ${item}    IN    @{my_list}  # Pass: Iterates over the items of the list object
        Log    ${item}                  # Pass: Logs the items of the list object
    END