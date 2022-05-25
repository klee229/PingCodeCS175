

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    
    static let topTen = [
        Video(imageName: "Watercooler",
              title: "Watercooler Meeting",
              description: "Insert Guide",
              viewCount: 106,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://www.youtube.com/watch?v=ASxLOrgzn7U")!),
        
        Video(imageName: "Jackbox",
              title: "Jackbox Night",
              description: "An easy team building game that can be played both remotely or in person. Learn more about your coworkers and what makes them laugh. We know you'll have a blast with the quirky humor, fun gameplay, and exhilarating excitement!",
              viewCount: 1081,
              uploadDate: "May 2, 2022",
              url: URL(string: "https://www.youtube.com/watch?v=d_DAQFaHPfk")!),
        
        Video(imageName: "IceBreaker",
              title: "Ice Breakers",
              description: "Insert Guide",
              viewCount: 16289,
              uploadDate: "May 19, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=SZMg5JyL0fc")!),
        
        Video(imageName: "Bowling",
              title: "Bowling Trip",
              description: "Insert Guide",
              viewCount: 11911,
              uploadDate: "May 21, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=uXgLEp6qnX8")!),
        
        Video(imageName: "CardGames",
              title: "Card Games",
              description: "Insert Guide",
              viewCount: 1113,
              uploadDate: "July 7, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=T4VIsCPxVZE")!),
        
        Video(imageName: "GarticPhone",
              title: "Gartic Phone",
              description: "Insert Guide",
              viewCount: 10601,
              uploadDate: "October 4, 2019",
              url: URL(string: "https://www.youtube.com/watch?v=9rDGqneHgy0")!),
        
        Video(imageName: "Spyfall",
              title: "SpyFall",
              description: "Insert Guide",
              viewCount: 9292,
              uploadDate: "January 28, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=_AJva1xq160")!),
        
        Video(imageName: "TwentyQuestions",
              title: "20 Questions",
              description: "Insert Guide",
              viewCount: 8769,
              uploadDate: "January 24, 2019",
              url: URL(string: "https://www.youtube.com/watch?v=-DhYcvp3ZfE")!),
        
        Video(imageName: "Mafia",
              title: "Card Mafia",
              description: "Insert Guide",
              viewCount: 76224,
              uploadDate: "June 24, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=Wx7kz5LpAz4")!),
        
        Video(imageName: "MovieNight",
              title: "Pizza and Movie",
              description: "Insert Guide",
              viewCount: 5404,
              uploadDate: "Dec 2, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=VBaaJSKM7ko")!)
    ]
}
