////
////  Home.swift
////  Rmit (iOS)
////
////  Created by Huy Bui Thanh on 08/07/2022.
////
//
//import SwiftUI
//
//struct Home: View {
//    @State var currentIndex: Int = 0
//    
//    @State var pictures: [Picture] = []
//    @State var tops: [Picture] = []
//    var body: some View {
//        NavigationView{
//            ZStack{
//                Color.black.ignoresSafeArea()
//  
//                VStack(spacing: 15) {
//                    
//                    
//                    NavigationBar()
//                    
//                    ScrollView {
//                        VStack{
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    NavigationLink{ Home().navigationBarTitle("")
//                                            .navigationBarHidden(true)
//                                            .navigationBarTitleDisplayMode(.inline)} label: {
//                                    Image("picture2")
//                                        .resizable()
//                                        .frame(width: 375, height: 600, alignment: .center)
//                                            }
//                                
//                            }
//                            }
//                            ZStack(alignment: .leading) {
//                                HStack(alignment: .center, spacing: 70) {
//                                    Button{
//                                        
//                                    } label: {
//                                        VStack(spacing: 5){
//                                            Image(systemName: "plus")
//                                                .resizable()
//                                                .frame(width: 20, height: 20, alignment: .center)
//                                                .foregroundColor(.white)
//                                            Text("My List")
//                                                .foregroundColor(.white)
//                                        }
//                                    }
//                                    // Play Button
//                                    Button{
//                                        
//                                    } label: {
//                                        HStack(spacing: 20){
//                                            Image(systemName: "play.fill")
//                                                .resizable()
//                                                .frame(width: 20, height: 20, alignment: .center)
//                                                .foregroundColor(.black)
//                                            Text("Play")
//                                                .font(.title2)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(.black)
//                                        }
//                                    }
//                                    .frame(width: 120, height:40)
//                                    .background(Color.white)
//                                    
//                                    // Info Button
//                                    Button{
//                                        
//                                    } label: {
//                                        VStack (spacing: 5){
//                                            Image(systemName: "info.circle")
//                                                .resizable()
//                                                .frame(width: 20, height: 20, alignment: .center)
//                                                .foregroundColor(.white)
//                                            Text("info")
//                                                .foregroundColor(.white)
//                                        }
//                                    }
//                                }
//                            }
//
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    Text("Popular on Rmitflex")
//                                        .fontWeight(.semibold)
//                                        .font(.system(size: 25))
//                                        .foregroundColor(Color.white)
//                                        .offset(x: -40, y: 10)
//                                    
//                                }
//                            }
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    //ScrollView(.horizontal) {
//                                    Carousel(trailingSpace: 150 ,index: $currentIndex, items: pictures) {
//                                        picture in
//                                        GeometryReader { proxy in
//                                            let size = proxy.size
//                                            NavigationLink{ Home().navigationBarTitle("")
//                                                    .navigationBarHidden(true)
//                                                    .navigationBarTitleDisplayMode(.inline)} label: {
//                                            Image(picture.pictureImage)
//                                                .resizable()
//                                                .aspectRatio(contentMode: .fill)
//                                                .frame(width: size.width)
//                                                .cornerRadius(12)
//                                                }
//                                        }
//                                    }
//                               // }
//                                }.onAppear() {
//                                    for index in 1...5 {
//                                        pictures.append(Picture(pictureImage: "picture\(index)"))
//                                    }
//                                }
//                                .padding(8)
//                            }
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    Text("Popular on Asia")
//                                        .fontWeight(.semibold)
//                                        .font(.system(size: 25))
//                                        .foregroundColor(Color.white)
//                                        .offset(x: -60, y: 320)
//                                }
//                                .padding(8)
//                            }
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    Carousel(trailingSpace: 150 ,index: $currentIndex, items: asias) {
//                                        asia in
//                                        GeometryReader { proxy in
//                                            let size = proxy.size
//                                            
//                                            Image(asia.pictureImage)
//                                                .resizable()
//                                                .aspectRatio(contentMode: .fill)
//                                                .frame(width: size.width)
//                                                .cornerRadius(12)
//                                            
//                                        }
//                                    } .padding(.vertical, 310)
//                                    
//                                }
//                                .padding(8)
//                                .onAppear() {
//                                    for index in 1...5 {
//                                        asias.append(Picture(pictureImage: "asia\(index)"))
//                                    }
//                                    
//                                    
//                                }
//                            }
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    Text("Top 10")
//                                        .fontWeight(.semibold)
//                                        .font(.system(size: 25))
//                                        .foregroundColor(Color.white)
//                                        .offset(x: -130, y: -10)
//                                }
//                            }
//                            ZStack(alignment: .leading) {
//                                VStack(alignment: .leading) {
//                                    Carousel(trailingSpace: 150 ,index: $currentIndex, items: tops) {
//                                        top in
//                                        GeometryReader { proxy in
//                                            let size = proxy.size
//                                            
//                                            Image(top.pictureImage)
//                                                .resizable()
//                                                .aspectRatio(contentMode: .fill)
//                                                .frame(width: size.width)
//                                                .cornerRadius(12)
//                                            
//                                        }
//                                    } .padding(.vertical, 160)
//                                        .offset(x: 0, y: -190)
//                                }
//                                .padding(8)
//                                .onAppear() {
//                                    for index in 1...6 {
//                                        tops.append(Picture(pictureImage: "top\(index)"))
//                                    }
//                                    
//                                    //}
//                                    
//                                }
//                            }
//                        }
//                    }
//                    .frame(minHeight:550, maxHeight: 7000)
//                    NavigationBarLow()
//                    Image (systemName: "arrow.down.circle")
//                    
//                }
//                
//                .frame(maxHeight: .infinity, alignment: .top)
//                
//            }.navigationBarTitle("")
//                .navigationBarHidden(true)
//                .navigationBarTitleDisplayMode(.inline)
//        }
//        
//    }
//}
//
//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
