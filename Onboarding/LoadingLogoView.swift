//
//  LoadingLogoView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 25/06/22.
//

import SwiftUI

struct LoadingLogoView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color(red: 196/255, green: 219/255, blue: 245/255))
                .frame(width: 230, height: 230, alignment: .center)
            
            Image("loadingIcon")
        }
    }
}

struct LoadingLogoView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingLogoView()
    }
}
