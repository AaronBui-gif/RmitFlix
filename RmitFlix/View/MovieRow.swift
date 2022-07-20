//
//  MovieRow.swift
//  Rmit
//
//  Created by Huy Bui Thanh on 19/07/2022.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie

    var body: some View {
        HStack {
            movie.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(movie.title)

            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
