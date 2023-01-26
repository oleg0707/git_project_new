Feature: AP functionality


Scenario: Create Notification Categories
When I log in as manager to AP OCP
When I open "Main menu" -> "Notification Categories" via AP OCP
When I click "Create" toolbar link via AP OCP
Then "New Notification Category" page should be opened via AP OCP
When I create "New Notification Category" via AP OCP with parameters:
"""
Name: After subscription expiration
Description: BLANC
Public: off
Enable when create account: on
"""
Then the "New Notification Category" should be present by "Name" column name via AP OCP






Scenario: Create taxes
When I log in as manager to AP OCP
When I open "Main menu" -> "Taxes" via AP OCP
When I click "Create tax" toolbar link via AP OCP
Then "New Tax" page should be opened via AP OCP
When I create "New Tax" via AP OCP with parameters:
"""
Name: NDS
Tax Code: BLANC
Rate: 20
"""
Then the "New Tax" should be present by "Name" column name via AP OCP





Scenario: Validation "Rate" field when ceate taxes
When I log in as manager to AP OCP
When I open "Main menu" -> "Taxes" via AP OCP
When I click "Create tax" toolbar link via AP OCP
Then "New Tax" page should be opened via AP OCP
When I create "New Tax" via AP OCP with parameters:
"""
Name: NDS
Tax Code: BLANC
Rate: 20.234
"""
Then Then field "Rate" should be marked with "only 2 digits after decimal point" via AP OCP





Scenario: Unable to create guaranteed payment when not all required fields are filled
When I log in as manager to AP OCP
When I open "Main menu" -> "Guaranteed Payment" via AP OCP
When I click "Create" toolbar link via AP OCP
Then "New Guaranteed Payment" page should be opened via AP OCP
When I create "New Guaranteed Payment" via AP OCP with parameters:
"""
Account: BLANK
Total: 100
"""
Then Then field "Account" should be marked with "must exist" via AP OCP

