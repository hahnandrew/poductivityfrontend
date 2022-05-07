//
//  Tasks.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/6/22.
//

import Foundation

struct Tasks: Codable {
    let text: String
    let isComplete: String

    init(text: String, isComplete: String) {
        self.text = text
        self.isComplete = isComplete
    }

}
