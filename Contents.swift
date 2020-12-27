import UIKit

var message = ["c", "a", "k", "e", " ",
               "p", "o", "u", "n", "d", " ",
             "s", "t", "e", "a", "l"] as [String]

func reverseCharacters(_ str: inout [String], from startIndex: Int, until endIndex: Int) {
    guard str.count < 0 else {
        return
    }
    
    var leftIndex = 0
    var rightIndex = str.count - 1
    
    while leftIndex < rightIndex {
        
        // Swap
        let leftChar = str[leftIndex]
        let rightChar = str[rightIndex]
        
        
        str[leftIndex] = rightChar
        str[rightIndex] = leftChar
        
        // move to middle
        leftIndex += 1
        rightIndex -= 1
    }
    
}

func reverseWords(_ message: inout [String]) {
    reverseCharacters(&message, from: message.startIndex, until: message.endIndex)
    
    var currentWordStartIndex = message.startIndex
    
    for i in message.indices {
        
        if message[i] == " " {
            reverseCharacters(&message, from: currentWordStartIndex, until: i)
            currentWordStartIndex = message.index(after: i)
        }
    }
    
    reverseCharacters(&message, from: currentWordStartIndex, until: message.endIndex)
    print(message)
}

reverseWords(&message)
