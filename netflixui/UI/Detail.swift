//
//  Detail.swift
//  netflixui
//
//  Created by Dwi Randy Herdinanto on 26/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    @State var episodeList: [EpisodeType]
    @Binding var show : Bool
    
    var body: some View {
        VStack(spacing: 15){
            HStack(spacing: 10){
                Button(action:{
                    self.show.toggle()
                }){
                    Image("back").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action:{}){
                    Image("share").renderingMode(.original)
                }
                
                Button(action:{}){
                    Image("info").renderingMode(.original)
                }
            }.padding()
            
            ZStack{
                Image("detail").resizable()
                
                VStack(alignment: .leading, spacing: 12){
                    Spacer()
                    
                    Text("TV SERIES . ACTION")
                    Text("Marvel's The Defenders").font(.title)
                    
                    HStack(spacing: 10){
                        Text("98% Match").foregroundColor(.green)
                        Text("2019")
                        Image("hd")
                        
                        Spacer()
                    }
                }.padding()
                
            }.frame(height: 490)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 15){
                    HStack{
                        Button(action:{}){
                            HStack(spacing: 10){
                                Image(systemName: "play.fill")
                                Text("Play")
                            }.padding()
                        }.foregroundColor(Color.white)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                    
                        
                        Button(action:{}){
                            HStack(spacing: 10){
                                Image(systemName: "plus")
                                Text("ADD TO PLAYLIST")
                            }.padding()
                        }.foregroundColor(Color.white)
                        .background(Color("Color"))
                        .cornerRadius(10)
                        
                        Spacer()
                    }.padding(.bottom, 10)
                    
                    
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 10){
                            Text("Episodes")
                            Text("Here are the episodes season 1").foregroundColor(.gray)
                        }
                        
                        Button(action:{}){
                            HStack(spacing: 10){
                                Image(systemName: "chevron.down")
                                Text("Season 1")
                            }.padding()
                        }.foregroundColor(Color.white)
                        .background(Color("Color"))
                        .cornerRadius(10)
                    }
                    
                    Divider().padding(.vertical, 12)
                    
                    ForEach(episodeList){episode in
                        VStack(alignment: .leading, spacing: 15){
                            HStack{
                                
                                Image(episode.image)
                                
                                VStack(alignment: .leading, spacing: 10){
                                    Text(episode.name)
                                    Text(episode.time)
                                }
                                
                                Spacer()
                                
                                Button(action:{}){
                                    Image("download").renderingMode(.original)
                                }
                            }
                            
                            Text(episode.desc)
                        }
                    }
                }
            }.padding()
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

