//
//  Profiles.swift
//  3580
//
//  Created by Samara Mcphail on 24/08/2022.
//

import SwiftUI

struct Profiles: View {
    var body: some View {
        ZStack{
            Image("BackGround")
            
            VStack{
                Image("PROFILES")
                
                HStack{
                    Image("person1")
                    Text("hdghdhdg")
                    
                    Image("person2")
                    Text("fbfbgn")
                }
                
                HStack{
                    Image("person3")
                    Text("hdghdhdg")
                    
                    Image("person4")
                    Text("fbfbgn")
                }
                
                HStack{
                    Image("person5")
                    Text("hdghdhdg")
                    
                    Image("person6")
                    Text("fbfbgn")
                }
                
                HStack{
                    Image("person7")
                    Text("hdghdhdg")
                    
                    Image("person8")
                    Text("fbfbgn")
                }
            }
            
        }
    }
}

struct Profiles_Previews: PreviewProvider {
    static var previews: some View {
        Profiles()
    }
}
