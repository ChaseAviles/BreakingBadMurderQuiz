//
//  BreakingBad.swift
//  BreakingBadQuiz
//
//  Created by Christian Johnson on 2/10/21.
//

import Foundation

// https://www.breakingbadapi.com/api/characters/random
// (Above) This is the link for the breaking bad endpoints below
struct BreakingBad: Decodable {
    
    let char_id: Int?
    let name: String?
    let birthday: String?
    let occupation: [String]?
    let img: String?
    let status: String?
    let nickname: String?
    let appearance: [Int]?
    let portrayed: String?
    let category: String?
    let better_call_saul_appearance: String?
    
} // end of BreakingBad struct




