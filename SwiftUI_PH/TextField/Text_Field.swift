//
//  Text_Field.swift
//  SwiftUI_PH
//
//  Created by Vishwas on 13/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Text_Field : View {
    @State private var name = "Vishwas"
    var body: some View {
        VStack {
            Spacer()
            TextField("Enter Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding(30)
            Spacer()
            Text("your text is \(name)")
                .lineLimit(nil)
            Spacer()
            Text("Unlike in UIKit , here you use Binding method to read the textfield value here")
                .font(.footnote)
                .foregroundColor(Color.gray)
                .lineLimit(5)
            Text("Binding is done with Key Word @State")
                .font(.footnote)
                .foregroundColor(Color.gray)
            Spacer()
        }
        
    }
}

struct Secure_Field:View {
    @State private var password = ""
    var body: some View {
        
        VStack {
            Spacer()
            SecureField("Enter Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(30)
            Spacer()
            Text("Your password is \(password)")
            Spacer()
            Text("Secure Textfield is used for passwords where text is not exposed to viewr but collected in variable")
                .font(.footnote)
                .foregroundColor(Color.gray)
                .lineLimit(nil)
            Spacer()
        }
        
    }
    
}

struct Container_Text:View {
    var body: some View {
        
        TabbedView {
            Text_Field()
                .tabItem{ Text(" Text Field").font(.footnote)}.tag(0)
            Secure_Field()
                .tabItem{ Text("Password Field").font(.footnote)}.tag(1)
        }
    }
}

#if DEBUG
struct Text_Field_Previews : PreviewProvider {
    static var previews: some View {
        Text_Field()
    }
}

struct Text_Field_Previews2 : PreviewProvider {
    static var previews: some View {
        Secure_Field()
    }
}

struct Text_Field_Previews3 : PreviewProvider {
    static var previews: some View {
        Container_Text()
    }
}

#endif
