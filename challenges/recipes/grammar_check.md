# Exercise 2 - Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

*Include the name of the method, its parameters, return value, and side effects.*

grammar_check
**grammar_check** ensures that a text start with a capital letter and end with a punctuation mark

**is_correct = grammar_check(text)**

**text** : a string (e.g.”today it is sunny”)

**is_correct**: a boolean

Return the text with the correct punctuation. (The method doesn’t have any side effects?)

## 3. Create Examples as Tests

*Make a list of examples of what the method will take and return.*

```
#scenario1
grammar_check("") => fail "Not a sentence"

#scenario2
grammar_check("Hello, I am Tia.") => true

#scenario3
grammar_check("hello, I am Tia") => false

#scenario4
grammar_check("hello, I am Tia.") => false

#scenario5
grammar_check("Hello, I am Tia") => false

#scenario6
grammar_check("HELLO, I am Tia.") => true

#scenario7
grammar_check("Hello, I am Tia!") => true

#scenario8
grammar_check("Hello, I am Tia,") => false
```

*Encode each example as a test. You can add to the above list as you go.*

## 4. Implement the Behaviour

*After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.*