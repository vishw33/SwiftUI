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
            Text ("Original Image")
                .font(.footnote)
                .color(Color.gray)
            
            
            Image("Black_Rose")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .border(Color.black)
            
            Text ("Framed Image")
                .font(.footnote)
                .color(Color.gray)
        }
    }
}

struct ShapesView:View {
    var body: some View {
        
        VStack(spacing:30){
            Circle()
                .fill(Color.red)
                .padding()
            Text ("Circle")
                .font(.footnote)
                .color(Color.gray)
                
            Rectangle()
                .fill(Color.blue)
                .padding()
            Text ("Rectangle")
                .font(.footnote)
                .color(Color.gray)
            
            Ellipse()
                .fill(Color.yellow)
                .padding()
            Text ("Ellipse")
                .font(.footnote)
                .color(Color.gray)
            
            RoundedRectangle(cornerSize: CGSize(width: 100 , height: 100), style: .circular)
                .fill(Color.green)
                .padding()
            Text ("RoundedRectangle")
                .font(.footnote)
                .color(Color.gray)
            
            
        }
    }
}

struct ResizeImage:View {
    var body: some View {
        
        VStack(spacing: 50){
        Image("pink_Rose")
            .resizable()
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .overlay( Circle().stroke(Color.green , lineWidth: 4))
            .aspectRatio(contentMode: .fit)
            .shadow(color: Color.red, radius: 30, x: 3, y: 3)
        Text ("image resized with circle clamp and shadow and border")
            .font(.footnote)
            .color(Color.gray)
        }
    }
}

struct ImageBackGround:View {
    var body: some View {
        VStack (spacing:250){
        Text("It takes a Village.....")
            .background(Image("Rose_mixed") .resizable() .frame(width: 200, height: 200, alignment: .center))
            .font(Font.system(size: 30))
            .foregroundColor(Color.green)
            .offset(x: 0, y: 30)
            
            
            Text ("image  with background as Image")
                .font(.footnote)
                .color(Color.gray)
            
            
        }
    }
    
}

struct ImgContainer:View {
    var body: some View {
        TabbedView {
            Images()
                .tabItem{ Text("Normal Image").font(.footnote)}.tag(0)
            ResizeImage()
                .tabItem{ Text("Resized Image").font(.footnote)}.tag(1)
            ShapesView()
                .tabItem{ Text("Shape in  Image").font(.footnote)}.tag(2)
            ImageBackGround()
                .tabItem { Text("Shape in  Image").font(.footnote)}.tag(3)
                    
            }
            
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

struct ResizeImage_Previews3 : PreviewProvider {
    static var previews: some View {
        ImgContainer()
    }
}

struct ResizeImage_Previews4 : PreviewProvider {
    static var previews: some View {
        ImageBackGround()
    }
}

#endif
