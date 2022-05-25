//
//  VideoListView.swift
//  
//
//  Created by Ken Lee on 4/2/22.
//
import AVFoundation
import SwiftUI



struct ContentView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        
        TabView{
            
            FunRoom()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            PinBoard()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Pin Board")
                }
            
            TheOfficialListView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Activities")
                }
            
            PingSettings()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
      //  .accentColor(.red)
        }
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            ContentView()
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var middleColor: Color
    var bottomColor: Color
    
    
    var body: some View {
        
        
        
        LinearGradient(gradient: Gradient(colors: [topColor, middleColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ButtonFormat: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    
    
    var body: some View {
        
        
        Text(title)
            .bold()
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.bottom, 20)
    }
}
