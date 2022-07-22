//
//  TestHomeView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 20/07/2022.
//

import SwiftUI

struct TestHomeView: View {
    @State var currentIndex: Int = 0
    
    @State var pictures: [Picture] = []
    @State var asias: [Picture] = []
    @State var tops: [Picture] = []
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
                                    Image("picture2")
                                        .resizable()
                                        .frame(width: 425, height: 500, alignment: .center)
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
                                    Carousel(trailingSpace: 150 ,index: $currentIndex, items: pictures) {
                                        picture in
                                        GeometryReader { proxy in
                                            let size = proxy.size
                                            
                                            Image(picture.pictureImage)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: size.width)
                                                .cornerRadius(12)
                                            
                                        }
                                    }
                                }.onAppear() {
                                    for index in 1...5 {
                                        pictures.append(Picture(pictureImage: "picture\(index)"))
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
                                        .offset(x: -90, y: 370)
                                }
                                .padding(8)
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Carousel(trailingSpace: 150 ,index: $currentIndex, items: asias) {
                                        asia in
                                        GeometryReader { proxy in
                                            let size = proxy.size
                                            
                                            Image(asia.pictureImage)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: size.width)
                                                .cornerRadius(12)
                                            
                                        }
                                    } .padding(.vertical, 360)
                                    
                                }
                                .padding(8)
                                .onAppear() {
                                    for index in 1...5 {
                                        asias.append(Picture(pictureImage: "asia\(index)"))
                                    }
                                    
                                    //}
                                    
                                }
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Top 10")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -100, y: 10)
                                }
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Carousel(trailingSpace: 150 ,index: $currentIndex, items: tops) {
                                        top in
                                        GeometryReader { proxy in
                                            let size = proxy.size
                                            
                                            Image(top.pictureImage)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: size.width)
                                                .cornerRadius(12)
                                            
                                        }
                                    } .padding(.vertical, 200)
                                        .offset(x: 0, y: -210)
                                }
                                .padding(8)
                                .onAppear() {
                                    for index in 1...5 {
                                        tops.append(Picture(pictureImage: "top\(index)"))
                                    }
                                    
                                    //}
                                    
                                }
                            }
                        }
                    }
                    .frame(minHeight:700, maxHeight: 7000)
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
        TestHomeView()
            .previewInterfaceOrientation(.portrait)
    }
}