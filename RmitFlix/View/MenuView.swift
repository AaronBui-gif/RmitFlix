//
//  MenuView.swift
//  Rmit (iOS)
//
//  Created by Huy Bui Thanh on 13/07/2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                //ScrollView {
                //NavigationView{
                VStack(spacing: 15) {
                    NavigationBar()
                        .offset(y:13)
                    ScrollView {
                        VStack{
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    HStack(spacing: 5) {
                                        // Profiles
                                        ForEach(users) { user in
                                            NavigationLink{ UserDetail(user: user)} label: {
                                                UserCard(user: user)
                                            }
                                        }
                                    }
                                }
                            }
                            .offset(y:50)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        NavigationLink{ ManageAccountView()} label: {
                                            Image(systemName: "pencil")
                                                .foregroundColor(.gray)
                                                .imageScale(.large)
                                            Text("Manage Accounts")
                                                .foregroundColor(.gray)
                                                .font(.headline)
                                        }
                                    }
                                }
                            }
                            .padding(.top, 80)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        NavigationLink{ MovieList()} label: {
                                            Image(systemName: "checkmark")
                                                .foregroundColor(.gray)
                                                .imageScale(.large)
                                            Text("Movie List")
                                                .foregroundColor(.gray)
                                                .font(.headline)
                                        }
                                    }
                                }
                            }.padding(.top, 30)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        NavigationLink{ MovieList()} label: {
                                            Image(systemName: "gear")
                                                .foregroundColor(.gray)
                                                .imageScale(.large)
                                            Text("Settings")
                                                .foregroundColor(.gray)
                                                .font(.headline)
                                        }
                                    }
                                }
                            }.padding(.top, 30)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        NavigationLink{ MovieList()} label: {
                                            Image(systemName: "questionmark.circle")
                                                .foregroundColor(.gray)
                                                .imageScale(.large)
                                            Text("Help")
                                                .foregroundColor(.gray)
                                                .font(.headline)
                                        }
                                    }
                                }
                            }.padding(.top, 30)
                            ZStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    HStack {
                                        NavigationLink{ MovieList()} label: {
                                            Image(systemName: "arrowshape.backward")
                                                .foregroundColor(.gray)
                                                .imageScale(.large)
                                            Text("Log Out")
                                                .foregroundColor(.gray)
                                                .font(.headline)
                                        }
                                    }
                                }
                            }.padding(.top, 30)
                            Spacer()
                            
                            
                        } // VStack
                    } // Scroll View
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

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
