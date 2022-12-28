//
//  ListaIgraca.swift
//  Skocko1
//
//  Created by Lola on 21.12.22..
//

import Foundation

struct ListaIgraca: Codable {
    let success: Bool?
    let scores: [Igrac]
   

    
}
struct Igrac: Codable {
    var pozicija : Int?
    let id : Int?
    let name : String?
    var time : Int = -1
    var line : Int = -1
    
    mutating func set(index: Int) {
        pozicija = index + 1
    }
    
}

struct Uspjeh: Codable {
    
    
    let success: Bool?
    var place: Int = 0
        
        
        
    }
    
    
    

