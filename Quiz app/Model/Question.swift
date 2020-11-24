//
//  Question.swift
//  Quiz app
//
//  Created by anurak teerarattananukulchai on 25/11/2563 BE.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    init(q: String, a : String) {
        text = q
        answer = a
    }
}
