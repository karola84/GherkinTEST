Using Gherkin write acceptance tests for following user stories:

Story-01
Title: Login to gmail.com
Narration:
As registered gmail user
I want to login to gmail
So I can see my emails
Preconditions:
User has google account
Acceptance Criteria:
User is informed about wrong credentials
User after successful login is redirected to gmail homepage


Feature: Login to gmail.com on Firefox 59.0.2 (64 bity)
So I can see my emails
As registered gmail user
I want to login to gmail

	Scenario 1: Login to gmail.com with correct password
		Given: I am registered google user and gmail user with email "cucumber@gmail.com", password "praca"
		When: I go to https://gmail.com
		And: I click my acount "cucumber@gmail.com" from list my emails
		And: I fill password with "praca"
		And: I click "next" button
		Then: I see my emails
		
	Scenario Outline 2: Login with invalid data
		Given: I exist with email "cucumber@gmail.com", password "praca"
		When: I am on login page https://gmail.com
		And: I fill in "email" with <email>
		And: I fill in "password" with <password>
		And: I press "next" button
		Then: I should see <message>
	Examples:
	| email| password | message|
	| wrongemail | praca | We can not find such a Google account |
	| cucumber@gmail.com | wrongpassword | Wrong password. Try again or click I forgot my password to reset it |
	
		
		
		
		
		