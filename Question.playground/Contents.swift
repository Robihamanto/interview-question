import Foundation
import UIKit


/// Complexity: O(n)
func removeCharacterFromString(text: String, char: Character) -> String {
    
    var result = ""
    
    for item in text {
        if item != char {
            result =  result + String(item)
        }
    }
    
    return result
}

removeCharacterFromString(text: "abc", char: "a")
removeCharacterFromString(text: "abd", char: "b")
removeCharacterFromString(text: "abcd", char: "d")
removeCharacterFromString(text: "aaaaaaaaaaaaaa", char: "a")
removeCharacterFromString(text: "aaaaaaaaaaaaaab", char: "a")
removeCharacterFromString(text: "", char: "d")
