//
//  SoundBoard.swift
//  
//
//  Created by Ken Lee on 4/5/22.
//

import SwiftUI
import AudioToolbox

struct PinBoard: View {
    
    @State private var theMessage = ""
    @State private var theDate = Date()
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.green, .blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30){
                
                ZStack{
                Button{
                    SoundManager.instance.playSound(sound: .noise1)
                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)){}
                } label: {

                    Image("")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .cornerRadius(4)
                        .padding(.vertical, 4)
                }
                    Text("When is the next meeting?")
                        .frame(width: 280, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                
                ZStack{
                    
                    Button{
                        SoundManager.instance.playSound(sound: .noise2)
                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)){}
                    } label: {
                  
                        Image("")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .resizable()
                            .scaledToFit()
                            .frame(height: 100)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                    }
                    
                    Text("Anyone else experiencing internet slowdowns?")
                        .frame(width: 280, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                Form{
                    Section(header: Text("Message")){
                        TextField("Write Co-Worker A Message", text: $theMessage)
                        DatePicker("Meet Time", selection: $theDate,in: Date()...)
                            .font(.system(size:15))
                        
                    }
                }
            }
        }
    }
}

#if canImport(UIKit)
extension View{
    func hideKeyBoard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct SoundBoard_Previews: PreviewProvider {
    static var previews: some View {
        PinBoard()
    }
}
