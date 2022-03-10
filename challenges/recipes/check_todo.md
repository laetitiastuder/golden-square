# Challenge - Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string @TODO.

## 2. Design the Method Signature

*Include the name of the method, its parameters, return value, and side effects.*


**track_tasks** check is a text includes the string "@TODO"

**is_included = track_tasks(text)**

**text** : a string (e.g.”today it is sunny”)

**is_included**: a boolean

Return the texts which included the string @TODO 
(The method doesn’t have any side effects?)

## 3. Create Examples as Tests

*Make a list of examples of what the method will take and return.*

```
#scenario1
track_tasks("") => fail "No tasks"

#scenario2
track_tasks("@TODO walking the dog") => true

#scenario3
track_tasks("walking the dog") => false

#scenario3
track_tasks("@todo walking the dog") => false

#scenario4
track_tasks("TODO walking the dog") => false

#scenario6
track_tasks("@TODO: walking the dog") => false

#scenario7

#scenario8


*Encode each example as a test. You can add to the above list as you go.*

## 4. Implement the Behaviour

*After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.*