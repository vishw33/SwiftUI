//
//  Picker_View.swift
//  SwiftUI_PH
//
//  Created by Vishwas on 13/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct MyPicker : View {
    let countriesList = ["India","Isrel","Russia","Buthan","Brazil","South Africa"]
    @State private var selectedCountry = 2
    
    var body: some View {
        VStack{
            Picker(selection: $selectedCountry,label: Text("Please choose a country")) {
                ForEach(0..<countriesList.count){
                    Text(self.countriesList[$0]).tag($0)
                        .foregroundColor(Color.red)
                        .font(.body)
                }
            }
            Text("You selected \(self.countriesList[selectedCountry])")
            Spacer()
            
            Text("Picker worker differently when placed in stack and in Form")
                .font(.footnote)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct MyPicker_form : View {
    let countriesList = ["India","Isrel","Russia","Buthan","Brazil","South Africa"]
    @State private var selectedCountry = 2
    
    var body: some View {
        Form{
            Picker(selection: $selectedCountry,label: Text("Please choose a country")) {
                ForEach(0..<countriesList.count){
                    Text(self.countriesList[$0]).tag($0)
                        .foregroundColor(Color.blue)
                        .accentColor(.red)
                    
                }
            }.pickerStyle(.default)
        }
    }
}

struct Picker_Container: View {
    var body: some View {
        TabbedView {
            MyPicker()
                .tabItem { Text("Picker in Stack")
            }.tag(0)
            
            MyPicker_form()
                .tabItem { Text("Picker in Form")
            }.tag(1)
        }
    }
    
}


#if DEBUG
struct Picker_View_Previews : PreviewProvider {
    static var previews: some View {
        MyPicker_form()
    }
}

struct Picker_View_Previews2 : PreviewProvider {
    static var previews: some View {
        MyPicker()
    }
}

struct Picker_View_Previews3 : PreviewProvider {
    static var previews: some View {
        Picker_Container()
    }
}
#endif
