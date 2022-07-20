//
//  Carousel.swift
//  Rmit (iOS)
//
//  Created by Huy Bui Thanh on 08/07/2022.
//

import SwiftUI

struct Carousel<Content: View, T: Identifiable>:
    View {
    var content: (T) -> Content
    var list: [T]
    
    // Properties
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat =
         100, index: Binding<Int>, items: [T], @ViewBuilder
         content: @escaping(T) -> Content) {
        
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    
    // Offset
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View {
        GeometryReader {proxy in
            
            // Setting correct width for carousel
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustmentWidth = (trailingSpace / 2) - spacing
            
            HStack (spacing: spacing) {
            ForEach(list) { item in
                content(item)
                    .frame(width: proxy.size.width - trailingSpace)
            }
        }
        .padding(.horizontal, spacing)
            
        // Setting only after 0th index
        .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? adjustmentWidth: 0) + offset)
        .gesture(
        DragGesture()
            .updating($offset, body: {value, out, _ in
                out = value.translation.width
            })
            .onEnded({ value in
                
                // Updating current index
                let offsetX = value.translation.width
                
                // convert the translation into progress (0 - 1)
                // round the value
                // based on the progress increasing or decreasing of the currentIndex
                
                let progress = -offsetX / width
                let roundIndex = progress.rounded()
                
                // setting max..
                currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                
                // updating index
                currentIndex = index
            })
            .onChanged({ value in
                
                // updating only index
                let offsetX = value.translation.width
                
                // convert the translation into progress (0 - 1)
                // round the value
                // based on the progress increasing or decreasing of the currentIndex
                
                let progress = -offsetX / width
                let roundIndex = progress.rounded()
                
                // setting max..
                index = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                

            })
        )
    }
        .animation(.easeInOut, value: offset == 0)
    }
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
