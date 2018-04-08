Story-02
Title: Send email
Narration:
As logged user
I want to send email
So I can communicate with others
Acceptance Criteria:
User should be able to send attachments
User should be able to send empty messages
Sent email should be available in Send category


Feature: Send email on Firefox 59.0.2 (64 bity)
So I can communicate with others
As logged user
I want to send email

	Scenario 1: send email without attached filles
		Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
		And: I see dashboard of my gmail
		When: I ckick "compose"
		And: I fill "recipients"
		And: I press "send" button
		Then: I see popup "Send this message without a subject or text in the body?"
		And: I press "OK"
		And: I should see "your message has been sent"
		And: I click "Sent Mail" category
		And: I should see my sent message in "Sent Mail" category
		
	Scenario 2: send email with attach filles
		Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
		And: I see dashboard my gmail
		When: I ckick "compose"
		And: I fill "recipients"
		And: I click icon "attach filles"
		And: I select attachment from fille browser
		And: I press "send" button
		Then: I see popup "Send this message without a subject or text in the body?"
		And: I press "OK"
		And: I should see "your message has been sent"
		And: I click "Sent Mail" category
		And: I should see my sent message in "Sent Mail"
		
		
		
		