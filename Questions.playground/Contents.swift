import Foundation
import UIKit


// SILENT & LISTEN | RACE & CARE | PART & TRAP


func isAnagram(text1: String, text2: String) -> Bool {
    
    if text1.count != text2.count {
        return false
    }
    
    var text1Dict = [Character: Int]()
    var text2Dict = [Character: Int]()
    
    for item in text1 {
        text1Dict[item] = text1Dict[item] ?? 0 + 1
    }
    
    for item in text2 {
        text2Dict[item] = text2Dict[item] ?? 0 + 1
    }
    
    if text1Dict != text2Dict {
        return false
    }
    
    return true
}

isAnagram(text1: "SILENT", text2: "LISTEE")


func isAnagram2(text1: String, text2: String) -> Bool {
    
    if text1.count != text2.count {
        return false
    }
    
    var text1Dict = [Character: Int]()
    var text2Dict = [Character: Int]()
    
    for index in 0 ..< text1.count {
        
        text1Dict[Array(text1)[index]] = text1Dict[Array(text1)[index]] ?? 0 + 1
        text2Dict[Array(text2)[index]] = text2Dict[Array(text2)[index]] ?? 0 + 1
        
    }
    
    if text1Dict == text2Dict {
        return true
    }
    
    return false
}


isAnagram2(text1: "SILENT", text2: "LISTEE")
