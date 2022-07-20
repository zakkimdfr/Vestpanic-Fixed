//
//  TutorialCarousel.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 05/07/22.
//

import SwiftUI

struct TutorialCarousel: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 16) {
                ForEach(tutorials) { it in
                    GeometryReader { proxy in
                        let scale = getScale(proxy: proxy)
                        NavigationLink(
                            destination: TutorialDetailsView(tutorial: it),
                            label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.white)
                                        .frame(width: 143, height: 74)
                                        .shadow(radius: 1)
                                    
                                    VStack{
                                        Text(it.title)
                                            .font(.system(size: 16, weight: .regular))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.leading)
                                            .foregroundColor(.black)
                                        
                                        HStack {
                                            Image(it.pic)
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
                                }
                            })
                        
                        .scaleEffect(.init(width: scale, height: scale))
                        //.animation(.spring(), value: 1)
                        .animation(.easeOut(duration: 1))
                        
                        .padding(.vertical)
                    } //End Geometry
                    .frame(width: 90, height: 80)
                    .padding(.horizontal, 32)
                    .padding(.vertical, 32)
                } //End ForEach
                Spacer()
                    .frame(width: 16)
            } //End HStack
        }// End ScrollView
    }
    
    func getScale(proxy: GeometryProxy) -> CGFloat {
        let midPoint: CGFloat = 125
        
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold {
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
        
        return scale
    }
}


struct TutorialCarousel_Previews: PreviewProvider {
    static var previews: some View {
        TutorialCarousel()
    }
}
