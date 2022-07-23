//
//  SearchView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 22/07/2022.
//

import SwiftUI

struct SearchView: View {
    @State var currentIndex: Int = 0
    
    @State var pictures: [Picture] = []
    @State var asias: [Picture] = []
    @State var tops: [Picture] = []
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()

                VStack(spacing: 15) {
                    
                    
                    NavigationBar()
                    
                    ScrollView {
                        VStack{
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                            FilteringList(movies, filterKeys: \.title) { movie in
                                            VStack(alignment: .leading) {
                                                Text(movie.title)
                                                    .font(.headline)
                                                Text(movie.summary)
                                                    .foregroundColor(.secondary)
                                            }
                                        }
                                }
                            }
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Top Searching on Rmitflix")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -10, y: 10)
                                    
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
