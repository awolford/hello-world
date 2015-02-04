When(/^I click the "(.*?)" tab$/) do |tab|
    click_link('Order Online')
end

Then(/^I should see the Dominos Location Search page$/) do
    expect(page).to have_selector(:id, 'locationsSearchPage')
end

Then(/^I fill out my home address$/)do
    fill_in('Street', :with => '395 Westfield Road')
    fill_in('City', :with => 'Noblesville')
    select('IN', :from => 'Region')
    fill_in('Postal_Code', :with => '46060')
    find_button('Continue').click
end

Then(/^I click Specialty Pizza$/) do
    find(:css, 'a.qa-Specialty.grid').click
end

Then(/^I click Order above Philly Cheese Steak Pizza$/) do
    find(:css, '#categoryPage2 > section:nth-child(2) > div > div:nth-child(3) > a').click
end

Then(/^I click No, Add To Order Now$/) do
    find(:css, '#configureSpecialtyPizza > div > button.btn.btn--large.js-isNew').click
end

Then(/^I click Order above Deluxe Feast$/) do
    find(:xpath, '//*[@id="categoryPage2"]/section[3]/div/div[3]/a').click
end

Then(/^I click Checkout$/) do
    find(:xpath, '//*[@id="orderSummaryInColumn"]/div[2]/div[1]/a/span').click
end