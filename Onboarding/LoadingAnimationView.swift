//
//  LoadingAnimationView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 02/07/22.
//

import SwiftUI

struct LoadingAnimationView: View {
    var body: some View {
        HStack {
            DotView()
            DotView(delay: 0.2)
            DotView(delay: 0.4)
        }
    }
}

struct LoadingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnimationView()
    }
}

struct DotView: View{
    @State var delay: CGFloat = 0
    @State var scale: CGFloat = 0.5
    var body: some View{
        Circle()
            .fill(Color(red: 94/255, green: 154/255, blue: 219/255))
            .frame(width: 20, height: 20)
            .scaleEffect(scale)
            .animation(.easeInOut(duration: 0.6).repeatForever().delay(delay))
            .onAppear{
                withAnimation{
                    self.scale = 1
                }
            }
    }
}
