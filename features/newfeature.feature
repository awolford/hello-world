@orderonline
Feature: Order Dominos Pizza Online
 We want to step through a simple scenario for training

@location
Scenario: Location Search for Dominos Pizza
   Given I visit the Dominos home page
   When I click the "Order Online" tab
   Then I should see the Dominos Location Search page



Scenario: Order Two Pizzas for Delivery
   Given I visit the Dominos home page
   When I click the "Order Online" tab
   Then I fill out my home address
   Then I click Specialty Pizza
   Then I click Order above Philly Cheese Steak Pizza
   Then I click No, Add To Order Now
   Then I click Order above Deluxe Feast
   Then I click No, Add To Order Now
   Then I click Checkout
   
