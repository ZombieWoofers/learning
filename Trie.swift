//
//  Trie.swift
//  
//
//  Created by AG on 10/31/17.
//

import Foundation

public class TrieNode {
    
    var key: String!
    var children: [TrieNode]
    var isFinal: Bool
    var level: Int
    
    init() {
        self.children = [TrieNode]()
        self.isFinal = false
        self.level = 0
    }
    
    func addWord(word: String) {
        var current : TrieNode = root
        var key = word.substringToIndex(current.level + 1)
        
        
    }
    
    
}
