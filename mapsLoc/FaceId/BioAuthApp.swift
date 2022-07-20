//
//  BioAuthApp.swift
//  mapsLoc
//
//  Created by Vargo Alfonso on 02/07/22.

import SwiftUI
import LocalAuthentication

struct BioAuthApp: View{
    @State private var unlocked = false
    
    
    var body: some View{
        VStack{
        if unlocked{
            ContentView()
        } else{
            Text("LOCKED")
        }
            
        }.onAppear(perform: authenticate)
    }
    func authenticate(){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "This is for security reason"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){ success, authenticationError in
                
                if success{
                    unlocked = true
                }
                else{
                    
                }
            }
        }else{
            
        }
        }
    }


struct BioAuthApp_previews: PreviewProvider{
    static var previews: some View{
        BioAuthApp()
    }
}
