

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
              description: "Come meet your team at the watercooler! Get a nice cold glass of water and talk about what you're going to do this weekend! This is a quick and easy way to meet your coworkers without having to leave the workplace.",
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
              description: "Time to learn more about each other! Maybe learn what kind of tree your co-worker would be, or if they have any pets. A super simple method of getting to know each other in a fun and interactive way.",
              viewCount: 16289,
              uploadDate: "May 19, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=SZMg5JyL0fc")!),
        
        Video(imageName: "Bowling",
              title: "Bowling Trip",
              description: "Who doesn't like bowling?! Bumpers or not, bowling can help bring your team together through gentle competition and a fun atmosphere.",
              viewCount: 11911,
              uploadDate: "May 21, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=uXgLEp6qnX8")!),
        
        Video(imageName: "CardGames",
              title: "Card Games",
              description: "Have some fun and maybe place some bets with these card games for groups of any size! Play popular classics like Poker, Hearts, Gin Rummy, or Blackjack.",
              viewCount: 1113,
              uploadDate: "July 7, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=T4VIsCPxVZE")!),
        
        Video(imageName: "GarticPhone",
              title: "Gartic Phone",
              description: "Test your drawing and guessing skills with this online game of Gartic Phone! Get to know your peers better with this quirky take on the classic telephone game.",
              viewCount: 10601,
              uploadDate: "October 4, 2019",
              url: URL(string: "https://www.youtube.com/watch?v=9rDGqneHgy0")!),
        
        Video(imageName: "Spyfall",
              title: "SpyFall",
              description: "Find the spy between you in this short but intense game of whodunit! Ask questions and see if you have what it takes to outwit the spy.",
              viewCount: 9292,
              uploadDate: "January 28, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=_AJva1xq160")!),
        
        Video(imageName: "TwentyQuestions",
              title: "20 Questions",
              description: "What is this a game of 20 questions? Precisely! Put on your deductive reasoning caps and ask your coworkers questions to learn more about each other!",
              viewCount: 8769,
              uploadDate: "January 24, 2019",
              url: URL(string: "https://www.youtube.com/watch?v=-DhYcvp3ZfE")!),
        
        Video(imageName: "Mafia",
              title: "Card Mafia",
              description: "Can you tell if you coworker is bluffing or not? Get some practice by playing Mafia with them where you do your best taking turns trying to eliminate each other!",
              viewCount: 76224,
              uploadDate: "June 24, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=Wx7kz5LpAz4")!),
        
        Video(imageName: "MovieNight",
              title: "Pizza and Movie",
              description: "Learn what types of movies your coworkers like and watch a movie screening with them while enjoying some pizza!",
              viewCount: 5404,
              uploadDate: "Dec 2, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=VBaaJSKM7ko")!)
    ]
}
