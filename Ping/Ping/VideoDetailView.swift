//
//  VideoDetailView.swift
//  
//
//  Created by Ken Lee on 4/2/22.
//

import SwiftUI
import AudioToolbox

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing: 20){
            
            
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40){
                Label("\(video.viewCount)", systemImage: "hand.thumbsup.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
         //   VStack(spacing: 20){
                
               
                
                Link(destination: video.url, label: {
                    Text("Watch Now")
                        .bold()
                        .font(.title2)
                        .frame(width: 280, height: 50)
                        .background(Color(.systemRed))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                       // .padding(.bottom, 100)
                    
                    
                    
                    
                    
                })
            
            Spacer()
           // }
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}