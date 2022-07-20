//
//  Home.swift
//  Rmit (iOS)
//
//  Created by Huy Bui Thanh on 08/07/2022.
//

import SwiftUI

struct Home: View {
    
    @State var myListView = false // MyList View
    @State var tvShowView = false
    @State var currentIndex: Int = 0
    
    @State var pictures: [Picture] = []
    var body: some View {
        if (myListView) {
            MovieList()
        }
        if (tvShowView) {
            Home()
        }
        ZStack{
            Color.black.ignoresSafeArea()
            //ScrollView {
            
            VStack(spacing: 15) {
                
                HStack(alignment: .center, spacing: 25) {
                    
                    Button {
                        
                    } label: {
                        Image("Icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                    Button ( action: {
                        self.tvShowView = true
                    }){
                        Text("TV Shows")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                    }
                    Button {
                        
                    } label: {
                        Text("Movies")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                    }
                    Button ( action: {
                        self.myListView = true
                    }) {
                        Text("My List")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                    }
                }
                ScrollView {
                    VStack{
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
                                } .padding(.vertical, 360)
                                
                            }
                            .padding(8)
                        }
                        ZStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                Text("Popular on Asia")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .offset(x: -100, y: 0)
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
                                } .padding(.vertical, 200)
                                    .offset(x: 0, y: -220)
                            }
                            .padding(8)
                        }
                    }
                }
                .frame(minHeight:700, maxHeight: 7000)
                HStack(alignment: .bottom, spacing: 23) {
                    
                    Button {
                        
                    } label: {
                        VStack {
                            Image (systemName: "house")
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                            Text("Menu")
                                .fontWeight(.semibold)
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                        }
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image (systemName: "magnifyingglass")
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                            Text("Search")
                                .fontWeight(.semibold)
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                        }
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image (systemName: "plus.square.on.square")
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                            Text("Coming Soon")
                                .fontWeight(.semibold)
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                        }
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image (systemName: "arrow.down.circle")
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                            Text("Downloads")
                                .fontWeight(.semibold)
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                        }
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image (systemName: "line.3.horizontal")
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                            Text("Menu")
                                .fontWeight(.semibold)
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                        }
                    }
                }
            }
            
            .frame(maxHeight: .infinity, alignment: .top)
            .onAppear() {
                for index in 1...5 {
                    pictures.append(Picture(pictureImage: "picture\(index)"))
                }
                
            }
            
        }
        //} // ScrollView
    } //var body
} // struct

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
