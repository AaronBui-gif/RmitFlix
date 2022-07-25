//
//  MovieRow.swift
//  Rmit
//
//  Created by Huy Bui Thanh on 19/07/2022.
//

import SwiftUI

struct UserCard: View {
    
    var user: User

    var body: some View {
        VStack {
            user.image
                .resizable()
                .frame(width: 50, height: 50)
                
            Text(user.name)
                .foregroundColor(.gray)
                .font(.headline)
                
        }
    }
}

struct UserCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserCard(user: users[0])
            UserCard(user: users[1])
        }
        .previewLayout(.fixed(width: 550, height: 600))
    }
}
