//
//  SIgnIn.swift
//  mapsLoc
//
//  Created by Vargo Alfonso on 04/07/22.
//

import AuthenticationServices
import SwiftUI

struct SignIn: View{
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("email") var email: String = ""
    @AppStorage("email") var firstName: String = ""
    @AppStorage("email") var lastName: String = ""
    @AppStorage("email") var userID: String = ""
    var body: some View{
        VStack{
            if userID.isEmpty{
                SignInWithAppleButton(.continue){
                    request in
                    request.requestedScopes = [.email,.fullName]
                }onCompletion:{result in
                    switch result{
                    case .success(let auth):
                        switch auth.credential{
                        case let credential as ASAuthorizationAppleIDCredential:
                            let email = credential.email
                            let firstName = credential.fullName?.givenName
                            let lastName = credential.fullName?.givenName
                            
                            self.email = email ?? ""
                            self.userID = userID
                            self.firstName = firstName ?? ""
                            self.lastName = lastName ?? ""
                        default:
                            break
                        }
                    case .failure(let error):
                        print(error)
                    }
                }
                .signInWithAppleButtonStyle(
                    colorScheme == .dark ?  .white : .black
                )
                
                .frame(height: 60)
                .padding()
                .cornerRadius(8)
            }
            else{
                
            }
        }
        .frame(height: 60)
    }
}

struct SignIn_Previews: PreviewProvider{
    static var previews: some View{
        SignIn()
    }
}
