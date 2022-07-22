//
//  TestView.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 20/07/2022.
//

import SwiftUI

struct TestView: View {
    var body: some View {

            
        NavigationView{
            HStack(alignment: .center, spacing: 25) {
                NavigationLink(destination: Text("1"), label: {
                                    Image("Icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                })
                NavigationLink(destination: Text("").navigationBarBackButtonHidden(true), label: {
                                       Text("TV Shows")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                })
                NavigationLink(destination: Text("").navigationBarBackButtonHidden(true), label: {
                                       Text("Movies")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                })
                NavigationLink(destination: MovieList().navigationBarBackButtonHidden(true), label: {
                                       Text("My List")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                })

            }
        
        }

    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView().colorScheme(.dark)
    }
}
