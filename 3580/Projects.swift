//
//  Projects.swift
//  3580
//
//  Created by Samara Mcphail on 24/08/2022.
//

import SwiftUI



struct Projects: View {
      
    @State var Name = ""
    @State var EmailAddress = ""
    @State var Message = ""
    var body: some View {
        

        ZStack{
            Image("BackGround")
            
            VStack{
                Image("PROJECTS")
                
                HStack{

                }
                
                Image("Getintouch")
                
                VStack{
                    //structure to create form
                    Form {
                        Section {
                            TextField("Name", text: $Name)
                            TextField("Email Address", text: $EmailAddress)
                            TextField("Message", text: $Message)
                        }
                        Section{
                            
                            Button(action:{
                                // code to email sir
                            }
                                   , label: {Text("continue")})
                        }
                    }
                    .frame(width: 500.0, height: 450.0)
                }
                
            
            }
        }
    }
}


struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
    }
}
