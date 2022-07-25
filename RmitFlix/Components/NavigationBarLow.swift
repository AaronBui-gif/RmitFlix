//
//  NavigationBarLow.swift
//  Rmit (iOS)
//
//  Created by Huy Bui Thanh on 15/07/2022.
//

import SwiftUI

struct NavigationBarLow: View {
    var body: some View {
        

            VStack{
        HStack(alignment: .bottom, spacing: 23) {
            
            NavigationLink{ TestHomeView().navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)} label: {
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
            NavigationLink{ SearchView().navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)} label: {
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
            NavigationLink{ ComingSoonView().navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)} label: {
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
            NavigationLink{ MovieList().navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)} label: {
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
            NavigationLink{ MovieList().navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)} label: {
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
    }
}

struct NavigationBarLow_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarLow().preferredColorScheme(.dark)
    }
}
