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
                
            Rectangle()
                .fill(Color.blue)
                        
            
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
#endif
