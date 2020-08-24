import Foundation
import UIKit


/// Compelxity: O(1)
func isPalindrome(text: String) -> Bool {
    
    let reversedText = String(text).reversed()
    
    if text != String(reversedText) {
        return false
    }
    
    return true
}

isPalindrome(text: "kasurrusak")


/// Complexity: O(n)
func isPalindrome2(text: String) -> Bool {
    
    var reversedText = ""

    for item in text {
        reversedText = reversedText + String(item)
    }
    
    if reversedText != text {
        return false
    }
    
    return true
}

isPalindrome2(text: "ANJAY")
