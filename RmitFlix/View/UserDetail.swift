//
//  UserDetail.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 19/07/2022.
//

import SwiftUI

struct UserDetail: View {
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
    
    var user: User
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                Group{
                    Image(user.imageName)
                        .resizable()
                        .frame(width: 250, height: 300)
                        .offset(y: -10)
                    
                    
                    VStack(alignment: .leading, spacing: 10) {

                        Text(user.name)
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .offset(x: 10)
                        Text(user.description)
                            .foregroundColor(Color.white)
                            .offset(x: 10)
                    }
                }
                .padding()
                
            }
            .navigationTitle(user.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton)
        }
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail(user: users[0])
    }
}
