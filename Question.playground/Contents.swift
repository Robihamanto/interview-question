// Do we need to handle other random characters? such as Alphabet, $#10&*?
// Is there any limitation for the text length?


// {} -> true
// [] -> true
// {[{}]} -> true
// {[} -> false
// {{{} -> false

// Barckets, Curly brackets, or the paranthesis total should be an even if we module with 2 (%)
// {[{}]}
// 1. Find a pair of the bracket
// 2. Calculate bracket inside the bracket
// 3. If there is odd bracket inside return false

import Foundation


// Flag: This is the first approach (inefficient)

func childBracketValidator(text: String) -> Bool {
    if text == "" || text.count % 2 != 0 { return false }
    let textChar = Array(text)
    let opener = ["[", "{", "["]
    let closer = ["]", "}", "]"]

    var openerCount = 0
    var closerCount = 0

    for char in textChar {
        if opener.contains(String(char)) { openerCount += 1}
        if closer.contains(String(char)) { closerCount += 1}
    }

    return openerCount == closerCount
}


func brakcetValidator(text: String) -> Bool {
    if text == "" || text.count % 2 != 0 { return false }
    let textChar = Array(text)
    let textCount = textChar.count - 1
    var isValid = true
    var i = 0
    var j = 0

    for _ in 0...textCount {
        j = textCount
        for _ in 0...textCount {

            if (textChar[i] == "{") {
                if textChar[j] == "}" {
                    isValid = childBracketValidator(text: String(textChar[i...j]))
                }
            }
            if (textChar[i] == "[") {
                if textChar[j] == "]" {
                    isValid = childBracketValidator(text: String(textChar[i...j]))
                }
            }
            if (textChar[i] == "(") {
                if textChar[j] == ")" {
                    isValid = childBracketValidator(text: String(textChar[i...j]))
                }
            }

            j -= 1
        }
        i += 1
    }


    return isValid
}

let texts = [
    "{[]()}", // true
    "{[(])}", // false
    "{[}", // false
    "{}" // true
];

for text in texts {
    print("\(brakcetValidator(text: text))")
}


// Flag: This is the second approach (efficient with stack)

func bracketValidation(text: String) -> Bool {
    let openerToClosers: [Character: Character] = ["[":"]", "{":"}", "(":")"]
    let opener: [Character] = Array(openerToClosers.keys)
    let closer: [Character] = Array(openerToClosers.values)

    var stack = [Character]()

    for char in Array(text) {
        if opener.contains(char) {
            stack.append(char)
        } else if closer.contains(char) {
            guard let lastestChar = stack.last else { return false }
            if openerToClosers[lastestChar] == char {
                stack.removeLast()
            }
        }
    }

    return stack.isEmpty
}

let strings = [
     "{[]()}", // true
     "{[(])}", // false
     "{[}", // false
     "([{}])" // true
];

for string in strings {
    print("\(bracketValidation(text: string))")
}
