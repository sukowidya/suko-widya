require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("open the website") do
  driver.navigate.to "https://youtube.com/"
  sleep(2)
end

Then("user click on trending") do
    driver.find_element(:link,'Trending').click
    driver.find_element(:xpath,'//*[@id="endpoint"]/paper-item/span[1]').click
    driver.find_element(:link,'Trending').click
    sleep(2)
end

Then("user click on musik") do
    driver.find_element(:link,'Musik').click
    driver.find_element(:xpath,'//*[@id="img"]').click
    driver.find_element(:link,'Musik').click
    sleep(5)
end

Then("user closing the browser") do
    driver.quit
end
