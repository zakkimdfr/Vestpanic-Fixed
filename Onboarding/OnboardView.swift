//
//  OnboardView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 25/06/22.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("bg")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: 100)
                    
                    Logo()
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Vestpanic!")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 150)
                    
                    
                    SignIn()
                    
                    Text("Or")
                        .foregroundColor(.secondary)
                    Spacer()
                        .frame(height: 10)
                    
                    NavigationLink(destination: HelpPageView()){
                        Text("Skip for Now")
                            .foregroundColor(.white)
                    }
                }
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

struct Logo: View {
    
    let color1 = Color(red: 64/255, green: 117/255, blue: 174/255)
    let color2 = Color(red: 134/255, green: 179/255, blue: 228/255)
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 267, height: 267, alignment: .center)
                .foregroundColor(color1)
            
            Circle()
                .frame(width: 194, height: 194, alignment: .center)
                .foregroundColor(color2)
            
            Image("logo")
        }
    }
}

//struct SignInButton: View {
//    var body: some View {
//        Button(action: {SignIn()}){
//            HStack{
//                Image(systemName: "applelogo")
//                    .resizable()
//                    .frame(width: 24, height: 29)
//                
//                Text("Sign In with Apple ID")
//                    .font(.system(size: 16, weight: .medium))
//            }
//            .frame(width: 311, height: 58)
//            .background(.white)
//            .foregroundColor(.primary)
//            .cornerRadius(10)
//        }
//    }
//}
