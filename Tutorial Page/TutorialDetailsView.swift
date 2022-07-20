//
//  TutorialDetailsView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 05/07/22.
//

import SwiftUI

struct TutorialDetailsView: View {
    
    let tutorial: Tutorial
    
    var body: some View {
        if tutorial.id == 0{
            EngineView()
        }else if tutorial.id == 1{
            TireView()
        }else{
            AccidentView()
        }
    }
}

struct TutorialDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialDetailsView(tutorial: Tutorial(id: 0, title: "Engine Problem", pic: "engine", link: "EngineView()"))
    }
}
