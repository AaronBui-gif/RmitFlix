//
//  SplashScreenView.swift
//  Rmit
//
//  Created by Huy Bui Thanh on 08/07/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                        .frame(width: 350.0, alignment: .center)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn (duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { //
                        self.isActive = true
                    }
                }
            }
            
        } // else
        }
    }
       
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
