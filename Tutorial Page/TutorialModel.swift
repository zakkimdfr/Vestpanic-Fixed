//
//  TutorialModel.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 04/07/22.
//

import Foundation
import SwiftUI

struct Tutorial: Identifiable{
    var id: Int
    var title: String
    var pic: String
    var link: String
}

let tutorials = [
    Tutorial(id: 0, title: "Engine Problem", pic: "engine", link: "EngineView()"),
    Tutorial(id: 1, title: "Tire Problem", pic: "tire", link: "TireView()"),
    Tutorial(id: 2, title: "Accident", pic: "accident", link: "EngineView()")
]
