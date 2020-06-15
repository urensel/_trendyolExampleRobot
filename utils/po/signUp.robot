*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${selector_signUpNow}  xpath=//*[@id="foorterMain"]/a
${selector_emailSignUp}  id=email
${selector_passwordSignUp}  id=password
${selector_genderMale}  xpath=//*[@id="registerForm"]/div[1]/div[2]/a[2]/span
${selector_marketingAuthorized}  xpath=//*[@id="registerForm"]/section[3]/div/label
${selector_termsOfUse}  xpath=//*[@id="registerForm"]/section[4]/div/label
${selector_register}  xpath=//*[@id="registerSubmit"]
${selector_registerBtn}  id=registerSubmit
${password}  Q1w2F5gxR
${email}  mailGenerator@test.com
${accountText}  Hesabım


*** Keywords ***
wait until login sign up button is visible
    Wait Until Element Is Visible  ${selector_signUpNow}

clicked register button
    click element  ${selector_signUpNow}

wait Until email is visible
    Wait Until Element Is Visible  ${selector_emailSignUp}

input text to email box
    Input text  ${selector_emailSignUp}  ${email}

input text to password box
    Input text  ${selector_passwordSignUp}  ${password}

clicked gender
      click element  ${selector_genderMale}

clicked marketing confirmed
    click element  ${selector_marketingAuthorized}

clicked terms of use
    click element  ${selector_termsOfUse}

clicked submit
    click element  ${selector_registerBtn}

verify register
    Page Should Contain  ${accountText}