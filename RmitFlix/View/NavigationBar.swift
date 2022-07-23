//
//  NavigationBar.swift
//  Rmit (iOS)
//
//  Created by Huy Bui Thanh on 15/07/2022.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
            
            VStack(alignment: .center,spacing: 15) {
                HStack(alignment: .center, spacing: 20) {
                    NavigationLink{ TestHomeView().navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationBarTitleDisplayMode(.inline)} label: {
                        Image("Icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                    NavigationLink{ TestHomeView().navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationBarTitleDisplayMode(.inline)} label: {
                        Text("TV Shows")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            

                    }
                    NavigationLink{ MovieList().navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationBarTitleDisplayMode(.inline)} label: {
                        Text("Movies")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            
                    }
                    NavigationLink{ MovieList().navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationBarTitleDisplayMode(.inline)} label: {
                        Text("My List")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            
                    }
                }
        
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar().preferredColorScheme(.dark)
    }
}
