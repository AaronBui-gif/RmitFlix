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
                
                CircleImage(image: movie.image)
                    .offset(y: -10)
                    .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack(alignment: .center, spacing: 275){
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
                    
                    Divider()
                    
                    Text("About \(movie.title)")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    Text(movie.summary)
                        .foregroundColor(Color.white)
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
