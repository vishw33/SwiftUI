//
//  StackHorizintal.swift
//  SwiftUI_PH
//
//  Created by Vishwas on 09/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct StackHorizintal : View {
    var body: some View {
        
        VStack(spacing:30) {
            Spacer()
            HBasicSub()
            Text("Basic HStack")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            HBasicSub2()
            Text("Hstack With Spacing")
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


struct StackHorizintal2 : View {
    var body: some View {
        
        VStack(spacing:30) {
            Spacer()
            HBasicSub3()
            Text("Hstack With Spacing with top Alignment")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            HBasicSub4()
            Text("Hstack With Spacing with bottom Alignment")
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

struct StackHorizintal3 : View {
    var body: some View {
        
        VStack(spacing:30) {
            Spacer()
            HBasicSub5()
            Text("Hstack With Spacing with custom Frame")
                .font(.footnote)
                .color(Color.gray)
            Divider()
            HBasicSub6()
            Text("Hstack With Spacing with custom Frame Fill mode")
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


struct HStackContainer:View {
    var body: some View {
        
        TabbedView{
            StackHorizintal()
                .tabItem{Text("Basic")} .tag(0)
            StackHorizintal2()
                .tabItem{Text("Alignment")} .tag(1)
            StackHorizintal3()
                .tabItem{Text("custom frame")} .tag(2)
        }
        
    }
}

#if DEBUG
struct HtackVertical_Previews : PreviewProvider {
    static var previews: some View {
        StackHorizintal()
    }
}

struct HtackVertical_Previews2 : PreviewProvider {
    static var previews: some View {
        StackHorizintal2()
    }
}

struct HtackVertical_Previews3 : PreviewProvider {
    static var previews: some View {
        StackHorizintal3()
    }
}

#endif

struct HBasicSub : View {
    var body: some View {
        return HStack {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct HBasicSub2 : View {
    var body: some View {
        return HStack(spacing:30) {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct HBasicSub3 : View {
    var body: some View {
        return HStack(alignment:.top , spacing:30) {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct HBasicSub4 : View {
    var body: some View {
        return HStack(alignment:.bottom , spacing:30) {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one")
                .border(Color.blue, width: 3)
        }
        .background(Color.gray)
    }
}

struct HBasicSub5 : View {
    var body: some View {
        return HStack {
            Text("This is Label")
                .border(Color.red, width: 3)
            Text("And another one, with bigger Text")
                .border(Color.blue, width: 3)
        }
        .frame(width: 400, height: 200, alignment: .center)
            .background(Color.gray)
    }
}


struct HBasicSub6 : View {
    var body: some View {
        return HStack(alignment:.bottom) {
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


#if DEBUG
struct StackHorizintal_Previews : PreviewProvider {
    static var previews: some View {
        StackHorizintal()
    }
}
#endif
