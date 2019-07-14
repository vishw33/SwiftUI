//
//  SettingStyleList.swift
//  SwiftUI_PH
//
//  Created by Vishwas on 10/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct SettingStyleList : View {
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: (Text("Text and Images").bold())) {
                    NavigationLink(destination: ViewTab()) {
                        Text("Text")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                    
                    
                    NavigationLink(destination: ImgContainer()) {
                        Text("Images")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                }
                
                Section(header: (Text("Stacks").bold())) {
                    NavigationLink(destination: VStackContainer()) {
                        Text("VStack")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                    
                    NavigationLink(destination: HStackContainer()) {
                        Text("HStack")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                }
                
                Section(header:(Text("TextField").bold())) {
                    NavigationLink(destination: Container_Text()) {
                        Text("TextFiield")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                    
                }
                
                Section(header:(Text("Picker").bold())) {
                    NavigationLink(destination: Picker_Container()) {
                        Text("Picker")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                    
                    NavigationLink(destination: DatePicker_Container()) {
                        Text("Date Picker")
                            .fontWeight(.bold)
                            .color(.red)
                    }
                    
                }

                
//                Section(header:(Text("Tryout").bold())) {
//                    NavigationLink(destination: datePicker_Form()) {
//                        Text("try")
//                            .fontWeight(.bold)
//                            .color(.red)
//                    }
//                    
//                }
                
            }
        }
        .navigationBarTitle(Text("SwiftUI Controls") .color(.blue) ,displayMode: .inline)
        .statusBar(hidden: false)
        
        
        
        
    }
}

#if DEBUG
struct SettingStyleList_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingStyleList()
        }
    }
}
#endif
