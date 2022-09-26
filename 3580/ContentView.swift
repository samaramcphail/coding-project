//
//  ContentView.swift
//  3580
//
//  Created by Samara Mcphail on 17/08/2022.
//

import SwiftUI


struct ContentView: View {    //all code for the main view is included in this structure
    
    // states the variables for all other pages included within the app
    @State private var showProjects = false
    @State private var showProfiles = false
    @State private var showGallery = false
    @State private var showQuiz = false
    var body: some View {
        
            ZStack {  //stack so image&text can layer iver eachother
            
                Image("BackGround").ignoresSafeArea()
            
           
            
                VStack{ //stack so all content aligns vertically
                    Image("Logo")
                    .padding(               ).ignoresSafeArea()
                
            
                
                    HStack{ // stack so content lines horizontally
                        //top menu bar with buttons to link in the other pages
                        Button(action: {
                            self.showProjects.toggle() //links down to .sheet to open correct page
                        }, label: {
                            Image("1")
                        })
                    
                        .sheet(isPresented: $showProjects){Projects()}
                        //.sheet brings up separate page, $ converts variable showProjects to a Boolean variable
                    
                        
                        Button(action: {
                            self.showProfiles.toggle()
                        }, label: {
                            Image("2")
                        })
                    
                        .sheet(isPresented: $showProfiles){Profiles()}
                        
                        Button(action: {
                            self.showGallery.toggle()
                        }, label: {
                            Image("3")
                        })
                    
                        .sheet(isPresented: $showGallery){Gallery()}
                        
                        Button(action: {
                            self.showQuiz.toggle()
                        }, label: {
                            Image("4")
                        })
                    
                        .sheet(isPresented: $showQuiz){Quiz()}
                        
                    
                }
                
         
                    ZStack{
                        Image("homephoto")
                            .padding(.bottom, 100.0)
                    
                    //attatches a URL to an image; when clicked the URL opens
                        Link(destination: URL(string: "https://www.justgiving.com/fundraising/3580?utm_medium=cpc&utm_source=google&utm_term=&utm_device=c&utm_campaign")!,
                             //attatches the 'donate' image as the link to the URL
                             label: {Image("donate")}).padding(.leading, 500.0)
                        .padding(.top, 250.0)
                }
                      
                    
                    
                    
                    
                    
                 
        
                
                    Image("ABOUT")
                    
                    Text("She lived in a refugee camp outside of Waterloo in Sierra Leone. She attended Penisula Primary School. She wanted to be lawyer. She was just 9 years old, when she died of a malaria induced coma. She was the 3580 child to have died in a small refugee camp that year. She became project 3580.")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 35.0)
                    .frame(width: 700.0)
                }
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
