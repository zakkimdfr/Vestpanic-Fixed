//
//  EngineView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 04/07/22.
//

import SwiftUI

struct spark{
    let number: String
    let content: String
}

private let sparks = [
    spark(number: "1.\n", content: "Prepare spark plug, spark plug wrench, screwdriver, and rag"),
    spark(number: "2.", content: "Keep the motorbike on a flat place"),
    spark(number: "3.", content: "Take off the right side of the body"),
    spark(number: "4.", content: "Open the spark plug holder and remove the spark plug using the spark plug wrench"),
    spark(number: "5.", content: "Clean the dirt around the spark plug hole"),
    spark(number: "6.", content: "Install the spark plug and close the vespa body again")
]

struct EngineView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Text("Cancel")
                        .foregroundColor(.red)
                }
            }
        }
    
    var btnSave : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Text("Save")
                        .foregroundColor(.gray)
                }
            }
        }
    
    var body: some View {
        NavigationView{
            VStack{
                Text("How To Fix Your Spark Plug")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.bottom)
                Spacer()
                    .frame(height: 28)
                
                Image("spark")
                    .resizable()
                    .frame(width: 184, height: 184)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: 55)
                
                ForEach(0..<sparks.count, id:\.self) {its in
                    VStack{
                        HStack{
                            Text(sparks[its].number)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(width: 36, alignment: .center)
                            
                            Text(sparks[its].content)
                                .font(.system(size: 18, weight: .regular))
                                .frame(width: 291, alignment: .leading)
                        }
                    }
                    .tag(its)
                }
                
                Spacer()
                    .frame(height: 140)
                
                
            }
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Engine Problem", displayMode: .inline)
        .navigationBarItems(leading: btnBack, trailing: btnSave)
    }
}

struct EngineView_Previews: PreviewProvider {
    static var previews: some View {
        EngineView()
    }
}
