import Foundation
import UIKit

// Is the first array is have an common characters to second array

func containsCommonItems(_ array1: [String],_ array2: [String]) -> Bool {
    
    for item1 in array1 {
        for item2 in array2 {
            if item1 == item2 {
                return true
            }
        }
    }

    return false
}

let arr1 = ["a", "b", "c"]
let arr2 = ["x", "y", "z"]

containsCommonItems(arr1, arr2)


func containsCommonItems2(_ array1: [String],_ array2: [String]) -> Bool {
    
    var dict = [String: Bool]()
    
    for item in array1 {
        dict[item] = true
    }
    
    for item in array2 {
        return dict[item] ?? false
    }
    
    return false
}

containsCommonItems(arr1, arr2)
