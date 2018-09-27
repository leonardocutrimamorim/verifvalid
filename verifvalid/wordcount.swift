//
//  wordcount.swift
//  verifvalid
//
//  Created by Leonardo Amorim on 22/09/2018.
//  Copyright © 2018 Leonardo Amorim. All rights reserved.
//

import Foundation



func wordCountFile(path: String) -> Dictionary<String, Int> {
    
    var wordDictionary = Dictionary<String, Int>()
    do {
        
        let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
            .components(separatedBy: .punctuationCharacters)
            .joined()
            .components(separatedBy: .whitespacesAndNewlines)
        
        for word in contents {
            if let count = wordDictionary[word] {
                wordDictionary[word] = count + 1
            } else {
                wordDictionary[word] = 1
            }
        }
    } catch _ as NSError {
        print("Something is wrong")
    }
    return wordDictionary
}

func getContentsFromFile() {
    let path = "/Users/leonardoamorim/Desktop/verifvalid/teste.txt"
    
    do {
        let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
        print(contents)
    } catch _ as NSError {
        print("Opps.Something is wrong")
    }
}

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
