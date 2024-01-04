Feature: Bunnies

   Bunny scenarios for two bunnies.
   
Scenario: Taking bunny to the vet
Given there are two bunnies
When a bunny is ill
Then bunny has to be taken to Exopet

Scenario: Cleaning crate of bunny
Given there are two bunnies with crates
When the bunny's crate is dirty
Then the crate has to be cleaned

Scenario: Feeding a bunny
Given there are two hungry bunnies
When it is morning
Then the bunny needs to be fed hay, pellets and greens

Scenario: Letting bunny out of the cage
Given there are two energetic bunnies
When it is after lunch
Then the bunny needs to be let out for 1 hour

Scenario: Petting a bunny
Given there are two cuddly bunnies
When the bunny comes to the human
Then bunny needs to be petted until the bunny goes away
