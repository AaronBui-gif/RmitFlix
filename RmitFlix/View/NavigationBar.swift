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
            
            HStack(alignment: .center, spacing: 25) {
        
                Button {
                    
                } label: {
                    Image("Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                Button {
                    
                } label: {
                   Text("TV Shows")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                }
                Button {
                    
                } label: {
                   Text("Movies")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                }
                Button ( action: {
                    //self.myListView = true
                }) {
                   Text("My List")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                }
            }
        
            Spacer(minLength: 0)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
