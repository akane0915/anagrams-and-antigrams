# _Anagrams and Antigrams_

#### _A web application to allow users to input a string and get an output from the site indicating if the word is an anagram. April 21, 2017_

#### By _**Asia Kane**_

## Description

This is a web application that takes a string from the user and:

1. Accounts for the possibility that words might have different cases by changing all letters to lowercase.

2. Checks if the inputs are words by checking the word contains at least one vowel. If one of the inputs has no vowels, the app returns: "You need to input actual words!"

3. Accounts for multiple words. Spaces and punctuation do not count, so they are removed (Note: This step permanently removes all spaces from each string.  The new string with no spaces or punctuation is passed into the anagram method to determine if the two strings are anagrams).

4. Determines if two words are anagrams. If they are, the app returns: "These words are anagrams."

5. If a word or phrase is an anagram, it checks if it's also a palindrome and returns: "These words are anagrams and at least one word is a palindrome."

6. If phrases aren't anagrams, the app checks whether they are antigrams and returns: "These words have no letter matches and are antigrams."

## Specifications
| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|The program takes two separate user inputs strings and stores the strings| "a", "b" | input_one = "a" input_two = "b" |
|The program takes the two strings and downcases all letters| "A", "B" | input_one = "a" input_two = "b" |
|The program takes the two strings and determines if each word (words are separated by a space) contains a vowel.  If not, program returns "You need to input actual words!"| "bc", "de" | "You need to input actual words!" |
|The program takes the two strings and removes all spaces and punctuation (everything that is not a lower case letter).| "a b", "d.e" | input_one = "ab", input_two = "de" |
|The program takes the two strings and checks if for every letter in input_one, there is a corresponding letter in input_two and no extra letters in input_two.  If so, the program returns: "These words are anagrams."| "ruby", "bury" | "These words are anagrams." |
|If the words are anagrams, the program takes the two strings and checks if each word is a palindrome (read the same backwards and forwards).  If so, the program returns: "These words are anagrams and at least one word is a palindrome."| "hannah", "bury" | "These words are anagrams and at least one word is a palindrome." |
|If the words are NOT anagrams, the program takes the two strings and checks if they are antigrams (if no letters match).  If so, the program returns: "These words have no letter matches and are antigrams."| "cat", "dog" | "These words have no letter matches and are antigrams." |


## Setup/Installation Requirements

* _View the project at akane0915.github.io/anagrams_and_antigrams_
* _Clone this repository_
* _Open files in text editor of your choice_
* _Make changes as desired_
* _Make frequent commits with detailed comments_
* _Submit changes as pull request to Asia at akane0915 on Github_

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

## Technologies Used
_Ruby, Sinatra, Capybara, HTML, CSS, Bootstrap, BDD_

### License
*This software is licensed under the MIT license*
Copyright (c) 2017 **Asia Kane**
