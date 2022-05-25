//
//  FunRoom.swift
// 
//
//  Created by Ken Lee on 4/4/22.
//

import SwiftUI

struct PingSettings: View {
    
    @State var showView: Bool = false
    @State private var theMessage = ""
    @State private var theDate = Date()
    @State private var anonPoll = false
    @State private var pinBoard = false
    @State private var guides = false
    @State private var theRating = 1
    // var width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack(alignment: .bottom){
            LinearGradient(gradient: Gradient(colors: [.blue, .red, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Button{
                    showView.toggle()
                } label:{
                    ZStack{
                        Circle()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.green)
                        Text("Ping Settings")
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: . bold))
                    }
                }
                
                Spacer()
                
                Form{
                   
                    
                    Section(header: Text("Ping Options")){
                        Toggle("Anonyomous Text/Polls", isOn: $anonPoll)
                        Toggle("Pin Board", isOn: $pinBoard)
                        Toggle("Activities Guides", isOn: $guides)
                        Stepper("Rate Ping", value: $theRating, in: 1...10)
                        Text("Ping's Rating: \(theRating)")
                        
                        //  .toggleStyle(SwitchToggleStyle(tint: .red))
                    }
                    
                    
                    Section(header: Text("Legal")){
                        Link("Terms of Service", destination: URL(string: "https://policies.google.com/terms?hl=en-US")!)
                    }
                    .accentColor(.red)
                    
                    
                }
                
                
            }
      
            
            if showView{
                
                Image("PingLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .cornerRadius(4)
                    .padding(.vertical, 4)
                    .transition(AnyTransition.scale.animation(.easeInOut))
                    .padding(.bottom, 200)
            }
            //  Spacer()
            
        }
        .edgesIgnoringSafeArea(.bottom)
        // .padding(.bottom, 30)
    }
}


struct PingSettings_Previews: PreviewProvider {
    static var previews: some View {
        PingSettings()
    }
}
