//
//  SoundsBootcamp.swift
//  
//
//  Created by Ken Lee on 4/2/22.
//

import SwiftUI
import AVKit

class SoundManager: ObservableObject {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case noise1
        case noise2
    }
    
    func playSound(sound: SoundOption){
       
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}

struct SoundsBootcamp: View {
    
   // @StateObject var soundManager = SoundManager()
    
    var body: some View {
        VStack(spacing: 40){
            Button("Play sound 1"){
                SoundManager.instance.playSound(sound: .noise1)
            }
            
            Button("Play sound 2"){
                SoundManager.instance.playSound(sound: .noise2)
            }
        }
    }
}

struct SoundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundsBootcamp()
    }
}
