//
//  TutorialView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 02/07/22.
//

import SwiftUI

struct TutorialView: View {
    
    @State private var index = 0
    
    var body: some View {
        //        TabView(selection: $index) {
        //            CardView()
        //        }
        //        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack(){
                CardView()
                    .frame(height: 100)
            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
struct CardView: View{
    var body: some View{
        ForEach(0..<tutorials.count, id:\.self) {it in
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 143, height: 74)
                    .shadow(radius: 1)
                
                VStack{
                    Text(tutorials[it].title)
                        .font(.system(size: 16, weight: .regular))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    HStack {
                        Image(tutorials[it].pic)
                            .resizable()
                            .frame(width: 39, height: 36)
                            .padding(.leading)
                        
                        Spacer()
                            .frame(width: 60, alignment: .leading)
                        
                        Image(systemName: "arrow.right")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.blue)
                            .padding(.trailing)
                    }
                }
                .tag(it)
            }
        }
    }
}

