//
//  MovieDetail.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 19/07/2022.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                Group{
                movie.image
                    .offset(y: -10)
                    .frame(width: 400, height: 300)
                    .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack(alignment: .center, spacing: 250){
                        Button(action: {
                            
                            
                        }, label: {
                            HStack(){
                                Image(systemName: "play")
                                    .foregroundColor(Color.white)
                                Text("Play")
                                    .foregroundColor(Color.white)
                                    .frame(width: 40, height: 40, alignment: .center)
                            }
                        })
                        .frame(width: 40, height: 40, alignment: .center)
                        .offset(x:30)
                        Button(action: {
                            
                            
                        }, label: {
                            HStack(){
                                Image(systemName: "square.and.arrow.down")
                                    .foregroundColor(Color.white)
                                Text("Save")
                                    .foregroundColor(Color.white)
                                    .frame(width: 40, height: 40, alignment: .center)
                            }
                        })
                        .frame(width: 40, height: 40, alignment: .center)
                    }
                    Text(movie.title)
                        .font(.title)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .offset(x: 10)
                    Divider()
                }
                    Text("Cast")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                    ForEach(movie.cast.indices, id: \.self) {
                        Text(self.movie.cast[$0])
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                        
                    }
                    Divider()
                    Text("Genre")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                    ForEach(movie.genres.indices, id: \.self) {
                        Text(self.movie.genres[$0])
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                        
                    }
                    Divider()
                    Text("About \(movie.title)")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                    Text(movie.summary)
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                }
                .padding()
                
            }
            .navigationTitle(movie.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}

func getCast(casts: [String]) -> String?{
    for cast in casts {
        return cast
    }
    return nil
}
