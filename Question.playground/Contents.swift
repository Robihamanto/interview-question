import Foundation
import UIKit

// Input
// String & Characters
// Case Sensitive

// Rule
// Duplicate characters on String
// If there is two charater reccuring, return the 1st one
// If there is no reccuring character, return null


func reccuringCharacters(text: String, char: Character) -> Character? {
    
    // 1. Iterate string to obtain the char
    // 2. Count is there any char > 1
    // 3. If not found return nil
    
    var textCharacters = [String: Int]()
    
    for item in text {
        textCharacters[String(item)] = textCharacters[String(item)] ?? 0 + 1
    }
    
    for item in text {
        if textCharacters[String(item)]! > 1 {
            return item
        }
    }
    
    return nil
}


reccuringCharacters(text: "ABCA", char: "A")
