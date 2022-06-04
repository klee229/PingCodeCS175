//
//  FunRoom.swift
//  
//
//  Created by Ken Lee on 4/4/22.
//

import SwiftUI
import AudioToolbox

struct FunRoom: View {
    
    @State var showView: Bool = false
    // @State private var theMessage = ""
    //  @State private var theDate = Date()
    // @State private var anonPoll = false
    // @State private var pinBoard = false
    // @State private var guides = false
    // @State private var theRating = 1
    // var width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack(alignment: .bottom){
            LinearGradient(gradient: Gradient(colors: [.blue, .red, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30){
              
                
                Button{
                    showView.toggle()
                    AudioServicesPlaySystemSound(1003)
                } label:{
                    ZStack{
                        Circle()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.green)
                        Text("Ping Lounge")
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: . bold))
                    }
                }
                Spacer()
                Spacer()
            
                
                Menu {
                    
                 
                    Link(destination: URL(string: "https://www.google.com")!, label: {
                        Label(
                            title: { Text("Add")},
                            icon: { Image(systemName: "plus")}
                        )
                    })
                  
                    
                    Link(destination: URL(string: "https://www.google.com/gmail/about/#")!, label: {
                        Label(
                            title: { Text("Email")},
                            icon: { Image(systemName: "envelope")}
                        )
                    })
            
                    
                    Link(destination: URL(string: "https://messages.google.com")!, label: {
                        Label(
                            title: { Text("Text")},
                            icon: { Image(systemName: "bubble.left")}
                        )
                    })
                    
                    
                    Link(destination: URL(string: "https://slack.com")!, label: {
                        Label(
                            title: { Text("Slack")},
                            icon: { Image(systemName: "dpad")}
                        )
                    })
                    
                } label: {
                
                    Button(action: {}, label: {
                     
                        Text("Launch Apps")
                            .bold()
                            .font(.title2)
                            .frame(width: 200, height: 50)
                            .background(Color(.blue))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    })
                }
                
                Spacer()
                Spacer()
                
                
                
                
            }
            
            
            if showView{
                
                Image("PingLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .cornerRadius(4)
                    .padding(.vertical, 4)
                    .transition(AnyTransition.scale.animation(.easeInOut))
                    .padding(.bottom, 100)
            }
            //  Spacer()
            
        }
        .edgesIgnoringSafeArea(.bottom)
        // .padding(.bottom, 30)
    }
}



struct FunRoom_Previews: PreviewProvider {
    static var previews: some View {
        FunRoom()
    }
}
