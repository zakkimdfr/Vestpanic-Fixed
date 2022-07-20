import SwiftUI

struct LinkedWa: View {
    @ObservedObject var webViewStateModel:WebViewStateModel = WebViewStateModel()
    @State private var webAddress = "http://google.com"
    var body: some View {
        VStack{
            HStack{
                TextField("Enter Web Address",text: $webAddress)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(25)
                Button(action: {
                    webViewStateModel.pageTitle = webAddress
                    webViewStateModel.goToPage = true
                }, label: {
                    Image(systemName: "magnifyingglass.circle.fill")
                })
                .font(.title)
            }
            WKView(webViewStateModel: webViewStateModel)
            
        }
        .toolbar{
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar){
                HStack{
                    Button(action: {
                        webViewStateModel.goBack = true
                    }, label: {
                        Image(systemName: "arrow.backward")
                    })
                    Button(action: {
                        webViewStateModel.goForward = true
                    }, label: {
                        Image(systemName: "arrow.forward")
                    })
                }
            }
        }
    }
}

struct LinkedWa_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
