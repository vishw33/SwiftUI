//
//  Images.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 06/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Images : View {
    var body: some View {
        
        VStack(spacing:30){
            Image("Black_Rose")
            
            Image("Black_Rose")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .border(Color.black)
        }
    }
}

struct ShapesView:View {
    var body: some View {
        
        VStack(spacing:30){
            Circle()
                .fill(Color.red)
                .padding()
                
            Rectangle()
                .fill(Color.blue)
                .padding()
            
            Ellipse()
                .fill(Color.yellow)
                .padding()
            
            RoundedRectangle(cornerSize: CGSize(width: 100 , height: 100), style: .circular)
                .fill(Color.green)
                .padding()
            
            
        }
    }
}

struct ResizeImage:View {
    var body: some View {
        
        Image("pink_Rose")
            .resizable()
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .overlay( Circle().stroke(Color.green , lineWidth: 4))
            .aspectRatio(contentMode: .fit)
            .shadow(color: Color.red, radius: 30, x: 3, y: 3)
    }
}

#if DEBUG
struct Images_Previews : PreviewProvider {
    static var previews: some View {
        Images()
    }
}

struct Images_Previews2 : PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

struct ResizeImage_Previews2 : PreviewProvider {
    static var previews: some View {
        ResizeImage()
    }
}

#endif
