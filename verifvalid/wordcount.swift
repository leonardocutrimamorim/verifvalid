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
        
        let toRemove = ["a", "an", "the", "some", "my", "your", "his", "her", "its", "our",
                        "their", "whose", "this", "that", "these", "those", "which", "any",
                        "another", "other", "what", "I", "you", "he", "she", "it", "we",
                        "they", "me", "him", "us", "them", "mine", "yours", "hers", "ours",
                        "yours", "theirs", "myself", "yourself", "himself", "herself",
                        "itself", "ourselves", "yourselves", "themselves", "about", "above",
                        "at", "before", "behind", "below", "beneath", "into", "inside",
                        "in", "from", "for", "except", "during", "down", "despite", "by",
                        "beyond", "between", "beside", "near", "of", "off", "on", "onto",
                        "opposite", "out", "outside", "over", "past", "since", "than", "through",
                        "to", "towards", "under", "underneath", "unlike", "until", "up", "upon",
                        "via", "with", "within", "without"]
        let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
            .components(separatedBy: .punctuationCharacters)
            .joined()
            .components(separatedBy: .whitespacesAndNewlines)
            .filter({!toRemove.contains($0)})
            .map({$0.lowercased()})
        
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
