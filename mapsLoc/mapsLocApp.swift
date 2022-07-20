//
//  mapsLocApp.swift
//  mapsLoc
//
//  Created by Vargo Alfonso on 30/06/22.
//

import SwiftUI

@main
struct mapsLocApp: App {
    @AppStorage("isPassOnboarding") var isShowOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            
            if (isShowOnboarding){
                OnBoardingView()
            }else{
                OnboardView()
                
            }
        }
    }
}


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

