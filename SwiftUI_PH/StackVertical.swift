//
//  StackVertical.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 09/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct StackVertical : View {
    var body: some View {
        
        VStack(spacing:30) {
            Spacer()
            BasicSub()
            Text("Basic VStack")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            BasicSub2()
            Text("Vstack With Spacing")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            VStack {
               Text("Red:- Text 1 border")
                Text("blue:- Text 2 border")
                 Text("Grey:- Stack Back Ground")
            }
            
            Spacer()
            
            
        }
    }
}

struct StackVertical2 : View {
    var body: some View {
        
        VStack(spacing:30) {
            Spacer()
            BasicSub3()
            Text("Vstack With Spacing with leading Alignment")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            BasicSub4()
            Text("Vstack With Spacing with Trailing Alignment")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            VStack {
                Text("Red:- Text 1 border")
                Text("blue:- Text 2 border")
                Text("Grey:- Stack Back Ground")
            }
            Spacer()
        }
    }
}

struct StackVertical3 : View {
    var body: some View {
        
        VStack(spacing:30) {
            Spacer()
            BasicSub5()
            Text("Vstack With Spacing with custom Frame")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            BasicSub6()
            Text("Vstack With Spacing with custom Frame Fill mode")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            VStack {
                Text("Red:- Text 1 border")
                Text("blue:- Text 2 border")
                Text("Grey:- Stack Back Ground")
            }
            Spacer()
        }
    }
}


struct VStackContainer:View {
    var body: some View {
        
        TabbedView{
            StackVertical()
                .tabItem{Text("Basic")} .tag(0)
            StackVertical2()
                .tabItem{Text("Alignment")} .tag(1)
            StackVertical3()
                .tabItem{Text("custom frame")} .tag(2)
        }
        
    }
}

#if DEBUG
struct StackVertical_Previews : PreviewProvider {
    static var previews: some View {
        StackVertical()
    }
}

struct StackVertical_Previews2 : PreviewProvider {
    static var previews: some View {
        StackVertical2()
    }
}

struct StackVertical_Previews3 : PreviewProvider {
    static var previews: some View {
        StackVertical3()
    }
}

#endif

struct BasicSub : View {
    var body: some View {
        return VStack {
            Text("This is Label")
                .border(Color.red, width: 3)
                Text("And another one, with bigger Text")
                    .border(Color.blue, width: 3)
            }
            .background(Color.gray)
    }
}

struct BasicSub2 : View {
    var body: some View {
        return VStack(spacing:30) {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct BasicSub3 : View {
    var body: some View {
        return VStack(alignment:.leading , spacing:30) {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct BasicSub4 : View {
    var body: some View {
        return VStack(alignment:.trailing , spacing:30) {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct BasicSub5 : View {
    var body: some View {
        return VStack {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .frame(width: 400, height: 200, alignment: .center)
        .background(Color.gray)
    }
}


struct BasicSub6 : View {
    var body: some View {
        return VStack {
            Text("This is Label")
                .border(Color.red, width: 3)
            Spacer()
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .frame(width: 400, height: 200, alignment: .center)
            .background(Color.gray)
    }
}
