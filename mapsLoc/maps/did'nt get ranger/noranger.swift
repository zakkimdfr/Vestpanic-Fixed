import SwiftUI
import MapKit

struct noRanger: View {
    
    let landmarks: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        VStack {
            
              
                Text("We help to find workshop near you")
            .frame(width: UIScreen.main.bounds.size.width, height: 70)
                .background(Color.blue)
                
                .cornerRadius(10)
            
            ZStack{
                            
                            Button(action: {
                                withAnimation{
                                }
                            }){
                                Text("Finish")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 171, height: 48)
                                    .background(Color(red: 0.21, green: 0.33, blue: 0.54))
                                    .cornerRadius(20)
                                }.padding(.bottom,60)
                    .frame(width: UIScreen.main.bounds.size.width, height: 70)
                        }
                    }.frame(width: UIScreen.main.bounds.size.width, height: 200)
                    .background(Color.white)
                    
                    
                    .frame( height: 200)
            }
            
    
            
    }


struct noRanger_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: {})
    }
}
