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
                TextSection()
                StackViewSection()
                TextfieldSection()
                PickerSection()
                
                Section(header:(Text("Action and Alert").bold())) {
                    NavigationLink(destination: ActionSheet_Container()) {
                        Text("Action")
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                    NavigationLink(destination: Alert_Container()) {
                        Text("Alert")
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                }
                
                Section(header:(Text("Toggle , Slider , Stepper").bold())) {
                    NavigationLink(destination: Toggle_Stepper()) {
                        Text("Toggle")
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                    NavigationLink(destination: Container_swt()) {
                        Text("Slider")
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                    NavigationLink(destination: Stepper_View()) {
                        Text("Stepper")
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI Controls") .foregroundColor(.blue) ,displayMode: .inline)
                .statusBar(hidden: false)
        }
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

struct TextSection: View {
    var body: some View {
        Section(header: (Text("Text and Images").bold())) {
            NavigationLink(destination: ViewTab()) {
                Text("Text")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
            NavigationLink(destination: ImgContainer()) {
                Text("Images")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
        }
    }
}

struct StackViewSection: View {
    var body: some View {
        Section(header: (Text("Stacks").bold())) {
            NavigationLink(destination: VStackContainer()) {
                Text("VStack")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
            NavigationLink(destination: HStackContainer()) {
                Text("HStack")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
        }
    }
}

struct TextfieldSection: View {
    var body: some View {
        Section(header:(Text("TextField").bold())) {
            NavigationLink(destination: Container_Text()) {
                Text("TextFiield")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
        }
    }
}

struct PickerSection: View {
    var body: some View {
        Section(header:(Text("Picker").bold())) {
            NavigationLink(destination: Picker_Container()) {
                Text("Picker")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
            NavigationLink(destination: DatePicker_Container()) {
                Text("Date Picker")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
        }
    }
}
