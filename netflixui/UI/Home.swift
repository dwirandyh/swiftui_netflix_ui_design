//
//  Home.swift
//  netflixui
//
//  Created by Dwi Randy Herdinanto on 26/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @State var text: String = ""
    @State var show: Bool = false
    
    var repository = Repository()
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 0) {
            
            HStack(spacing: 10){
                Button(action:{}){
                    Image("menu").renderingMode(.original)
                }
                
                Image("logo")
                
                Spacer()
                
                Button(action:{}){
                    Image("Notifications").renderingMode(.original)
                }
            }
            
            HStack(spacing: 15){
                Image(systemName: "magnifyingglass").font(.body)
                
                TextField("Search For Movie Show", text: self.$text)
            }.padding()
                .background(Color("Color"))
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 15){
                    Text("Netflix Originals").font(.title).padding(.top, 10)
                    
                    ZStack{
                        NavigationLink(destination: Detail(episodeList: self.repository.episodes, show: $show), isActive: $show){
                            Text("")
                        }
                        
                        Image("top").resizable().onTapGesture {
                            self.show.toggle()
                        }
                        
                        VStack{
                            Spacer()
                            HStack{
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Marvel's The Defenders").font(.body)
                                    Text("Season 1").font(.caption)
                                }
                                
                                Spacer()
                                
                                Button(action:{}){
                                    Image("play").renderingMode(.original)
                                }
                            }
                        }.padding()
                    }.frame(height: 190)
                    
                    HStack{
                        Spacer()
                        
                        Button(action:{}){
                            Text("View All")
                        }.foregroundColor(Color("Color1"))
                    }
                    
                    Text("Continue Watching")
                    
                    TypeListView(typeList: self.repository.typeList)
                    
                    Text("Explore By Genres")
                    
                    Genre()
                    
                    Text("Trending")
                    
                    Trending(trendingList: repository.trendingList)
                }
                
            }.padding(.bottom, 25)
            
        }.padding()
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.black)
            .preferredColorScheme(.dark)
    }
}

struct TypeListView : View {
    
    let typeList: [type]
    
    var body : some View{
        VStack(spacing: 15){
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15){
                    
                    ForEach(typeList){ type in
                        
                        VStack(alignment: .leading, spacing: 0){
                            Image(type.image)
                            HStack{
                                Spacer()
                                Button(action:{}){ Image("play").renderingMode(.original).resizable().frame(width: 25, height: 25)
                                }.padding(.top, -10)
                            }
                            
                            VStack(alignment: .leading){
                                Text(type.name)
                                Text(type.epname).foregroundColor(.gray)
                                
                                
                                ZStack{
                                    Capsule().fill(Color.gray)
                                    
                                    HStack{ Capsule().fill(Color("Color1")).frame(width: type.percentage)
                                        
                                        Spacer()
                                    }
                                }.frame(height: 5)
                            }.padding(.horizontal, 10)
                                .padding(.bottom, 10)
                        }.background(Color("Color")).padding(.bottom)
                    }
                }
            }
        }
    }
}

struct Genre : View {
    var body: some View{
        HStack(spacing: 15){
            Button(action:{}){
                Text("Action").padding()
            }.foregroundColor(Color.white)
                .background(Color("Color1"))
                .cornerRadius(10)
            
            Spacer()
            
            Button(action:{}){
                Text("Adventure").padding()
            }.foregroundColor(Color.white)
                .background(Color("Color1"))
                .cornerRadius(10)
            
            Spacer()
            
            Button(action:{}){
                Text("Comedy").padding()
            }.foregroundColor(Color.white)
                .background(Color("Color1"))
                .cornerRadius(10)
        }.padding(.horizontal, 5)
    }
}

struct Trending : View {
    
    let trendingList : [String]
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15){
                ForEach(trendingList, id: \.self){trending in
                    Image(trending)
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.colorScheme, .dark)
    }
}
