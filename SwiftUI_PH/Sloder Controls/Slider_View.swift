//
//  Slider_View.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 20/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct lslider: View {
    @State private var vale = 0.0
    var body: some View {
        VStack{
            Slider(value: $vale)
                .accentColor(Color.red)
                .padding([.leading,.trailing])
            Text("\(vale)")
        }
        
    }
}

struct lsliderValue: View {
    @State private var vale = 0.0
    var body: some View {
        VStack{
            Slider(value: $vale, from: 100, through: 1000, by: 10)
                .accentColor(Color.red)
                .padding([.leading,.trailing])
            Text("\(vale)")
        }
        
    }
}

struct lsliderCustom: View {
    @State private var vale = 0.0
    @State private var strVal = ""
    var body: some View {
        VStack{
            Slider(value: $vale, from: 100, through: 500, by: 2, onEditingChanged: { (_) in
                self.strVal = "Value Changed"
            })
                .accentColor(Color.red)
                .padding([.leading,.trailing])
            Text("\(vale)")
            Text(strVal)
        }
        
    }
}


struct Container_swt : View {
    
    var body:some View {
        TabbedView {
            lslider()
                .tabItem { Text("Slider")
                            .bold()
                            .foregroundColor(.red)
            }.tag(0)
            
            lsliderValue()
                .tabItem { Text("Slider Custum Value")
            }.tag(1)
            
            lsliderCustom()
                .tabItem { Text("Slider Event")
            }.tag(2)
        }
    }
}
#if DEBUG
struct Slider_View_Previews : PreviewProvider {
    static var previews: some View {
        Container_swt()
    }
}
#endif
