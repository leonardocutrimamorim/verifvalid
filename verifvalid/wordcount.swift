//
//  wordcount.swift
//  verifvalid
//
//  Created by Leonardo Amorim on 22/09/2018.
//  Copyright © 2018 Leonardo Amorim. All rights reserved.
//

import Foundation

func wordCount(s: String) -> Dictionary<String, Int> {
    
    
    var words = s.components(separatedBy: NSCharacterSet.whitespacesAndNewlines)
    var wordDictionary = Dictionary<String, Int>()
    
    for word in words {
        if let count = wordDictionary[word] {
            wordDictionary[word] = count + 1
        } else {
            wordDictionary[word] = 1
        }
    }
    
    return wordDictionary
}
