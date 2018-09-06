//
//  Post.swift
//  whyiOS
//
//  Created by Cody on 9/5/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import Foundation

struct Post: Codable {
    let uuid: String = UUID().uuidString
    let cohort: String = "iOS21"
    let name: String
    let reason: String
}
