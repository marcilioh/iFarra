When(/^[I ]*fill ([^"]*) input with ([^"]*)$/) do |data, input|
  fill_in(input, :with => data)
end

When(/^[I ]*click on the ([^"]*) button$/) do |button|
  click_button(button)
end

When(/^I visit the ([^"]*) page$/) do |link|
  visit(/#{link})
end

When(/^I have the user with email ([^"]*) and senha ([^"]*)$/) do |email, senha|
    @user = User.create!({
        :email => email,
        :senha => senha
    })
end