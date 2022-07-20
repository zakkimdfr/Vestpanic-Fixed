//
//  OnBoardingView.swift
//  Vestpanic
//
//  Created by suryadi - on 01/07/22.
//

import SwiftUI

struct OnBoardingStep{
    let image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image: "Page1", title: "Connected To Community", description: "Be part of vespa universe family\nDon't ever feel alone again"),
    OnBoardingStep(image: "Page2", title: "Tap For Help", description: "Don’t panic! We help you find rangers\nto solve your problem."),
    OnBoardingStep(image: "Page3", title: "Suggest Nearby Workshop", description: "There are workshops around you\nthat are ready to help.")
]

struct OnBoardingView: View {
    @State private var currentStep = 0
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    self.currentStep = onBoardingSteps.count - 1
                }){
                    Text("Skip")
                        .padding(16)
                        .foregroundColor(.white)
                }
            }
            
            TabView(selection: $currentStep){
                ForEach(0..<onBoardingSteps.count, id:\.self) {it in
                    VStack{
                        Image(onBoardingSteps[it].image)
                            .resizable()
                            .frame(width: 250, height: 250)
                        
                        Text(onBoardingSteps[it].title)
                            .font(.title)
                            .bold()
                        
                        Text(onBoardingSteps[it].description)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)
                            .padding(.top, 16)
                    }
                    .tag(it)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack{
                ForEach(0..<onBoardingSteps.count, id:\.self) { it in
                    if it == currentStep {
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    } else {
                        Circle()
                            .stroke(.white)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.none)
                    }
                }
            }
            .padding(.bottom, 24)
            
            Button(action:{
                if self.currentStep < onBoardingSteps.count - 1 {
                    self.currentStep += 1
                } else{
                    UserDefaults.standard.set(false, forKey: "isPassOnboarding")
                }
                
                
            }) {
                
                Text(currentStep < onBoardingSteps.count - 1 ? "Next" : "Get Started")
                    .padding(16)
                    .frame(maxWidth:.infinity)
                    .background(Color.white)
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    .foregroundColor(.blue)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .background(Color.blue.opacity(0.7))
    }
    
    struct OnBoardingView_Previews: PreviewProvider {
        static var previews: some View {
            OnBoardingView()
        }
    }
}
