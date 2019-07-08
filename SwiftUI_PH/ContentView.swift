//
//  ContentView.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 06/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        VStack(spacing:30) {
            Text("I am God , God is great\nI am God , God is great\nI am God , God is great\nI am God , God is great")
                .underline(true, color: .blue)
                .padding(20)
                .background(Color.gray)
                .foregroundColor(Color.red)
                .font(.largeTitle)
            Text("Text with back and forgeground color and underline and padding")
                .font(.footnote)
                .foregroundColor(Color.gray)
            
            Text("I am God , God is great\nI am God , God is great\nI am God , God is great\nI am God , God is great")
                .underline(false, color: .blue)
                .padding(20)
                .background(Color.clear)
                .foregroundColor(Color.red)
                .font(.largeTitle)
                .lineLimit(nil)
                .border(Color.black, width: 5)
            
            Text("Single Text with multiple line with border and padding")
                .font(.footnote)
                .foregroundColor(Color.gray)
        }
    }
}

struct GradientView : View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 55){
            Text("Hello World")
                .bold()
                .font(.largeTitle)
                .padding(20)
                .foregroundColor(Color.red)
                .background(LinearGradient(gradient: Gradient(colors: [.red , .green , .blue]), startPoint: .leading, endPoint: .trailing), cornerRadius: 10)
            
            Text("Text with backgroud Linear Gradient")
                .font(.footnote)
                .foregroundColor(Color.gray)
            
            Text("Hello World")
                .padding()
                .foregroundColor(.white)
                .background(AngularGradient(gradient: Gradient(colors: [.red , .yellow ,.white,.black]), center: .center, angle: Angle(degrees: 30)), cornerRadius: 10)
            Text("Text with backgroud AngularGradient Gradient")
                .font(.footnote)
                .foregroundColor(Color.gray)
            
            Text("Vishwas")
        }
    }
}
    
    struct ViewTab:View {
        var body: some View {
            TabbedView {
                GradientView()
                    .tabItem { Text("Simple Label") } .tag(0)
                ContentView()
                    .tabItem{Text("Gradient View")} .tag(1)
            }
        }
    }

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}

struct ContentView_Previews2 : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_Previews3 : PreviewProvider {
    static var previews: some View {
        ViewTab()
    }
}

#endif
