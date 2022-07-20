//
//  LoadingView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 25/06/22.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 130)
            
            LoadingLogoView()
            
            Text("Waiting for Vespa Rangers")
                .font(.system(size: 24, weight: .semibold))
                .padding()
            Spacer()
            LoadingAnimationView()
            
            Spacer()
                .frame(height: 190)
            
            CancelButton()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}

struct CancelButton: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: { self.presentationMode.wrappedValue.dismiss() }){
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 94/255, green: 154/255, blue: 219/255))
                                .frame(width: 355, height: 58)
                            .foregroundColor(.white)
                Text("Cancel")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(red: 94/255, green: 154/255, blue: 219/255))
            }
            
            
        }
    }
}
