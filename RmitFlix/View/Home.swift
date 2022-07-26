//
//  Home.swift
//  Rmit (iOS)
//
//  Created by Huy Bui Thanh on 08/07/2022.
//

import SwiftUI

struct Home: View {
    @State var currentIndex: Int = 0
    @State var i: Int = 0
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                //ScrollView {
                //NavigationView{
                VStack(spacing: 15) {
                    
                    
                    NavigationBar()
                        .offset(y:13)
                    ScrollView {
                        VStack{
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    NavigationLink{ MovieDetail(movie: movies[1])} label: {
                                        Image("picture2")
                                            .resizable()
                                            .frame(width: 375, height: 600, alignment: .center)
                                    }
                                    
                                }
                            }
                            .offset(y:20)
                            ZStack(alignment: .leading) {
                                HStack(alignment: .center, spacing: 80) {
                                    Button{
                                        
                                    } label: {
                                        VStack{
                                            Image(systemName: "plus")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                                .foregroundColor(.white)
                                            Text("My List")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    // Play Button
                                    Button{
                                        
                                    } label: {
                                        HStack(spacing: 20){
                                            Image(systemName: "play.fill")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                                .foregroundColor(.black)
                                            Text("Play")
                                                .font(.title2)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.black)
                                        }
                                    }
                                    .frame(width: 120, height:40)
                                    .background(Color.white)
                                    
                                    // Info Button
                                    Button{
                                        
                                    } label: {
                                        VStack{
                                            Image(systemName: "info.circle")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                                .foregroundColor(.white)
                                            Text("info")
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                            } .offset(y:20)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Popular on Rmitflex")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -70, y: 10)
                                    
                                }
                            } .offset(y:20)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 12) {
                                            ForEach(populars, id:\.self) { popular in
                                                NavigationLink{ MovieDetail(movie: popular)} label: {
                                                    Image(popular.imageName)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 200)
                                                        .cornerRadius(12)
                                                    
                                                }
                                                
                                            }
                                            
                                            
                                        }
                                    }
                                }
                                .padding(8)
                            } .offset(y:20)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Popular on Asia")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -60, y: 0) // 320 -> 120
                                }
                                .padding(8)
                            } .offset(y:20)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 12) {
                                            ForEach(asias, id:\.self) { asia in
                                                NavigationLink{ MovieDetail(movie: asia)} label: {
                                                    Image(asia.imageName)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 200)
                                                        .cornerRadius(12)
                                                    
                                                }
                                                
                                            }
                                        }
                                    }
                                }
                                .padding(8)
                            } .offset(y:0)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Top 10")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -130, y: 20)
                                }
                            } .offset(y:0)
                            
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 12) {
                                            ForEach(tops, id:\.self) { top in
                                                NavigationLink{ MovieDetail(movie: top)} label: {
                                                    Image(top.imageName)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 200)
                                                        .cornerRadius(12)
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                    }
                                }
                                .padding(8)
                            } .offset(y:0)
                            
                            
                        } // VStack
                    } // Scroll View
                    .frame(minHeight:600, maxHeight: 7050)
                    .offset(y: 10)
                    NavigationBarLow()
                        .offset(y:17)
                    Image (systemName: "arrow.down.circle")
                    
                }
                
                .frame(maxHeight: .infinity, alignment: .top)
                
            }.navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
