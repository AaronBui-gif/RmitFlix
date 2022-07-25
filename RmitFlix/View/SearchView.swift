//
//  SearchView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 22/07/2022.
//

import SwiftUI

struct SearchView: View {
    @State var currentIndex: Int = 0
    
    @State var searchText = ""
    @State var isSearching = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack(spacing: 15) {
                    NavigationBar()
                        .offset(y:13)
                    
                    ScrollView {
                        VStack{
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    SearchBar(searchText: $searchText, isSearching: $isSearching)
                                }
                            }
                            
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    ForEach(movies.filter({ "\($0)".contains(searchText) || searchText.isEmpty }), id: \.self) { movie in
                                        NavigationLink{ MovieDetail(movie: movie)} label: {
                                        HStack {
                                            Image(movie.imageName)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 200)
                                                .cornerRadius(12)
                                            Text(movie.title)
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        }
                                        Divider()
                                            .background(Color(.systemGray4))
                                            .padding(.leading)
                                    }
                                }
                            }
                        }
                    }
                    .frame(minHeight:600, maxHeight: 7050)
                    .offset(y: 10)
                    NavigationBarLow()
                        .offset(y:17)
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

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            HStack {
                TextField("Search movies", text: $searchText)
                    .padding(.leading, 24)
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(6)
            .padding(.horizontal)
            .onTapGesture(perform: {
                isSearching = true
            })
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    
                    if isSearching {
                        Button(action: { searchText = "" }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding(.vertical)
                        })
                        
                    }
                    
                }.padding(.horizontal, 32)
                .foregroundColor(.gray)
            ).transition(.move(edge: .trailing))
                .animation(.spring(), value: searchText)
            
            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    
                }, label: {
                    Text("Cancel")
                        .padding(.trailing)
                        .padding(.leading, 0)
                        .foregroundColor(.white)
                })
                .transition(.move(edge: .trailing))
                .animation(.spring(), value: searchText)
            }
            
        }
    }
}
