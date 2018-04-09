2. Write additional test scenarios for features described in point 1.

Feature: Login to gmail.com on Firefox 59.0.2 (64 bity)

		
	Scenario 1: Login to gmail.com without password
		Given: I am registered google user and gmail user with email "cucumber@gmail.com", password "praca"
		When: I go to https://gmail.com
		And: I click my acount "cucumber@gmail.com" from list my emails
		And: I click "next" button
		Then: I see enter your password
		
	Scenario 2: Login to gmail.com with 2FA
		Given: I am registered google user and gmail user with email "cucumber@gmail.com", password "praca"
		And: I have 2FA active on mobile app
		And: I login first time on new device
		When: I go to https://gmail.com
		And: I type my mail "cucumber@gmail.com"
		And: I type my password
		And: I click "NEXT"
		And: I click "Yes" on mobile app
		Then: I see gmail dashboard
		
	Scenario 3: Login to gmail.com without email
		Given: I am registered google user and gmail user with email "cucumber@gmail.com", password "praca"
		When: I go to https://accounts.google.com/?hl=en
		And: I click "next" button
		Then: I see message "Enter an email or phone number"
		And: I type my "phone number"
		And: I fill "password"
		And: I see dashboard gmail
		
	Scenario 4: Login to gmail.com with "Forgot password?"
		Given: I am registered google user and gmail user with email "cucumber@gmail.com", password "praca"
		When: I go to https://gmail.com
		And: I select my email with list
		And: I click "Forgot password?"
		And: I click "try another metod" button
		And: I click "Yes" on mobile app
		And: I create new password on my gmail
		Then: I see gmail dashboard
		
			
Feature: Send email on Firefox 59.0.2 (64 bity)
	
		Scenario 1: send email without subject
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I fill "recipients"
			And: I press "send" button
			Then: Send this message without a subject or text in the body?
			And: I should see your message has been sent
		
		Scenario 2: send email without recipients
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I press "send" button
			Then: I see "ERROR" Please specify at least one recipient.
		
		Scenario 3: cancel sending a message
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I fill "recipients"
			And: I press "send" button
			And: I press button "cancel sending" within 30 s.
			Then: I see message "Sending has been cancelled"
			And: I click in Drafts
			And: I see my message
 
		Scenario 4: send email with attachment .mp3 
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I fill "recipients"
			And: I click icon "attach filles"
			And: I select attachment from fille browser .mp3 (4,3MB)
			And: I press "send" button
			Then: I see popup "Your message has been sent."
			
		Scenario 5: send email with Burmese language
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I fill "recipients"
			And: I fill "subject" with "ဆိုပါစာမျက်နှာ Object ကိုပုံစံကိုသုံးပြီးပေးပို့ခြင်းများ"
			And: I fill message with "အဆိုပါစာမျက်နှာ များအတွက် repository ကို။ ပို့ခြင်းများအတွ..."
			And: I press "send" button
			Then: I see popup "Your message has been sent."
			
		Scenario 6: send email with subject "zażółć gęślą jaźń"
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I fill "recipients"
			And: I fill "subject" with "zażółć gęślą jaźń"
			And: I press "send" button
			Then: I see popup "Your message has been sent."

		Scenario 7: send email with attachment "Aplikacja.exe" 
			Given: I am logged as gmail user with email "cucumber@gmail.com", password "praca" 
			And: I see dashboard my gmail
			When: I ckick "compose"
			And: I fill "recipients"
			And: I click icon "attach filles"
			And: I select attachment from fille browser "Aplikacja.exe" (133 MB)
			And: I press "send" button
			And: I see popup "Attaching file. Your file is larger than 25 MB. It will be sent as a Google Drive link"
			And: I see popup "This drive file isn't shared with the recipient. Change how this file is shared on Drive:
                 Anyone with the link: Can view
			And: I click "share&send" button
			Then: I see popup "Your message has been sent."

		
		
		
		