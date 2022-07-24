//
//  ComingSoonView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 24/07/2022.
//

import SwiftUI

struct ComingSoonView: View {
    @State var currentIndex: Int = 0
    @State var i: Int = 0
    
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
                                    Text("Coming Soon")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                        .offset(x: -70, y: 10)
                                    
                                }
                            }
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

struct ComingSoonView_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonView()
    }
}
