import Foundation
import UIKit

// Input
// String & Characters
// Case Sensitive

// Rule
// Duplicate characters on String
// If there is two charater reccuring, return the character
// If there is no reccuring character, return null


func reccuringCharacters(text: String) -> Character? {
    
    for char in text {
        var count = 0
        for subChar in text {
            if char == subChar {
                count += 1
                if count > 1 {
                    return char
                }
            }
        }
    }
    
    return nil
}

reccuringCharacters(text: "DXBCABAX")

struct Reccurence {
    var priority: Int
    var key: Character
    var total: Int
}


func reccuringCharacters2(text: String) -> Character? {
    
    // 1. Iterate string to obtain the char
    // 2. Count is there any char > 1
    // 3. If not found return nil
    
    var textCharacters = [Character: Int]()
    
    for item in text {
        let currentValue = textCharacters[item] ?? 0
        textCharacters[item] = currentValue + 1
    }
    
    for item in text {
        if textCharacters[item] ?? 0 > 1 {
            return item
        }
    }
    
    return nil
}


reccuringCharacters2(text: "DXBCABAX")

