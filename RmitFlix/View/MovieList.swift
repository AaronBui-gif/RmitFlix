//
//  MovieList.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 19/07/2022.
//

import SwiftUI

struct MovieList: View {
    @State var myList = false // MyList View
    @State var tvShow = false
    var body: some View {
        NavigationView{
        ZStack() {
            Color.black.ignoresSafeArea()
            VStack(spacing: 15) {
                
                NavigationBar()
                NavigationView {
                    
                    List(movies) { movie in
                        NavigationLink {
                            MovieDetail(movie: movie)
                        } label: {
                            MovieRow(movie: movie)
                        }
                    }
                    .navigationTitle("Movies")
                }
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
            }.navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
    
}
