//
//  TVShowsView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 24/07/2022.
//

import SwiftUI

struct TVShowsView: View {
    @StateObject var videoManager = VideoManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
    
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
            //}
            VStack(spacing: 15) {
                NavigationBar()
                HStack {
                    ForEach(Query.allCases, id: \.self) { searchQuery in
                        QueryTag(query: searchQuery, isSelected: videoManager.selectedQuery == searchQuery)
                            .onTapGesture {
                                // When the user taps on a QueryTag, we'll change the selectedQuery from VideoManager
                                videoManager.selectedQuery = searchQuery
                            }
                    }
                }
                
                ScrollView {
                    if videoManager.videos.isEmpty {
                        ProgressView()
                    } else {
                        VStack (spacing: 20) {
                            ForEach(videoManager.videos, id: \.id) { video in
                                NavigationLink {
                                    VideoView(video: video)
                                } label: {
                                    VideoCard(video: video)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .frame(maxWidth: .infinity)
                NavigationBarLow()
            }
            .background(Color("AccentColor"))
            .navigationBarHidden(true)
            
        } // ZStack
        } // NavigationView
        
    }
}

struct TVShowsView_Previews: PreviewProvider {
    static var previews: some View {
        TVShowsView()
    }
}
