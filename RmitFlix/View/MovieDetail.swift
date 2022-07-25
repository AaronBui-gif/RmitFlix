//
//  MovieDetail.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 19/07/2022.
//

import SwiftUI

struct MovieDetail: View {
    @Environment(\.presentationMode) var presentationMode:
    Binding <PresentationMode>
    
    var BackButton: some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack{
            Image(systemName: "arrowshape.backward.fill")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
            Text("Back")
                .foregroundColor(.white)
        }
    }
    }
    
    var movie: Movie
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                Group{
                    Image(movie.imageName)
                        .resizable()
                        .frame(width: 250, height: 300)
                        .offset(y: -10)
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .center, spacing: 0) {
                        Button{
                            
                        } label: {
                            HStack(alignment: .center, spacing: 20){
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
                        .frame(width: 300, height:40)
                        .background(Color.white)
                        }
                        .offset(x: 25)
                        HStack(alignment: .center, spacing: 0) {
                        Button{
                            
                        } label: {
                            HStack(alignment: .center, spacing: 20){
                                Image(systemName: "square.and.arrow.down")
                                    .resizable()
                                    .frame(width: 20, height: 20, alignment: .center)
                                    .foregroundColor(.black)
                                Text("Download")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                            }
                        }
                        .frame(width: 300, height:40)
                        .background(Color.gray)
                        }
                        .offset(x: 25)
                    
                        Divider()
                        Text("About \(movie.title)")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .offset(x: 10)
                        Text(movie.summary)
                            .foregroundColor(Color.white)
                            .offset(x: 10)
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
                    HStack {
                    Text("Genre")
                        .foregroundColor(Color.white)
                        .offset(x: 10)
                    
                    ForEach(movie.genres.indices, id: \.self) {
                        
                        Text(self.movie.genres[$0])
                            .foregroundColor(Color.white)
                            .offset(x: 10)
                        
                    }
                    }
                    Divider()
                }
                .padding()
                
            }
            .navigationTitle(movie.title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}
