//
//  TestHomeView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 20/07/2022.
//

import SwiftUI

struct TestHomeView: View {
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
                                        HStack{
                                            Image(systemName: "play")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                                .foregroundColor(.white)
                                            Text("Play")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    
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
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Popular on Rmitflex")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -70, y: 10)
                                    
                                }
                            }
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
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Popular on Asia")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -60, y: 20) // 320 -> 120
                                }
                                .padding(8)
                            }
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
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Top 10")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -130, y: 20)
                                }
                            }
                            
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
                            }
                            
                            
                        }
                    }
                    .frame(minHeight:550, maxHeight: 7000)
                    NavigationBarLow()
                    Image (systemName: "arrow.down.circle")
                    
                }
                
                .frame(maxHeight: .infinity, alignment: .top)
                
            }.navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}

struct TestHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
        TestHomeView()
        }
    }
}
