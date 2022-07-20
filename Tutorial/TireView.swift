//
//  TireView.swift
//  Vestpanic
//
//  Created by Zakki Mudhoffar on 04/07/22.
//

import SwiftUI

struct tire{
    let number: String
    let content: String
}

private let tires = [
    spark(number: "1.\n", content: "Prepare '10' socket wrench & '18' ring wrench"),
    spark(number: "2.", content: "\nRemove the spare tire using a '10' socket wrench"),
    spark(number: "3.", content: "\nRemove the wheel lock nut using the '13' ring wrench."),
    spark(number: "4.", content: "\nFinally, install the spare wheel and put the damaged wheel into the spare"),
]

    

struct TireView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnCancel : some View { Button(action: {
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
                Text("How To Changes Tire?")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.bottom)
                
                Image("vespa")
                    .resizable()
                    .frame(width: 213, height: 184)
                    .padding(.bottom)
                
                ForEach(0..<tires.count, id:\.self) {its in
                    VStack{
                        HStack{
                            Text(tires[its].number)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(width: 36, alignment: .center)
                            
                            Text(tires[its].content)
                                .font(.system(size: 18, weight: .regular))
                                .frame(width: 291, alignment: .leading)
                        }
                    }
                    .tag(its)
                }
                
                Spacer()
                    .frame(height: 180)
                
                
            }
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Tire Problem", displayMode: .inline)
        .navigationBarItems(leading: btnCancel, trailing: btnSave)
    }
}

struct TireView_Previews: PreviewProvider {
    static var previews: some View {
        TireView()
    }
}
