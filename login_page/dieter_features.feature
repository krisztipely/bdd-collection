Feature: Login Page

   Login page to Dieter Bohlen VIP forum.
   
Scenario: Initial input check 
Given the user navigates to the login page
And user_email_input is present
And password_input is present
And login_button is present
And create_new_account_link is present
And forgot_password_link is present

Scenario: User sets email address
Given the user navigates to the login page
When they enter a valid <email> address
And they click the login_button
Then they should see a <message> with dark purple color

Examples: 
email | message
valid@email.com | -
invalidemail.com | “Please fill this field with the requested value”
"" | “Please fill this field with the requested value”

Scenario: User sets password
Given the user navigates to the login page
When they enter a valid <password>
And they click the login_button
Then they should see a <message> with dark purple color

Examples:
password | message
correctpassword | -
incorrectpassword | “Please fill this field with the requested value”
"" | “Please fill this field with the requested value”

Scenario: User clicks Forgot password
Given the user navigates to the login page
And they click the forgot_password_link
And response status is OK with <response_status>

Examples:
response_status | message
200 | not specified

Scenario: User clicks Login button
Given the user navigates to the login page
And they click the login_button
And response status is OK with <response_status>

Examples:
response_status | message
200 | not specified
