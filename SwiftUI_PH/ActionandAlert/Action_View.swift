//
//  Action_View.swift
//  SwiftUI_PH
//
//  Created by Vishwas on 17/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Action_View : View {
    
    @State private var showActionSheet = false
    
    var myactionSheet:ActionSheet {
        ActionSheet(title: Text("Simple Action Constructor"))
    }
    
    var body: some View {
        Button(action: {
            self.showActionSheet = self.showActionSheet ? false : true
        }, label: { Text("Action Sheet") })
            .presentation($showActionSheet) { () -> ActionSheet in
                myactionSheet
        }
    }
}

struct ActionSheet_Buttond:View {
    @State private var showActionSheet = false
    @State private var isUpdated = false
    var color:[Color] = [.red ,.green , .blue]
    @State private var team:Color = .white
    
    var myactionSheet:ActionSheet {
        
        
        ActionSheet(title: Text("My Action Sheet"), message: Text("Choose your Fav Color"), buttons: [.default(Text("Team Red"), onTrigger: {
            self.showActionSheet = false
            self.team = .red
        }),.default(Text("Team Blue"), onTrigger: {
            self.showActionSheet = false
            self.team = .blue
            
        }) ,.default(Text("Team Green"), onTrigger: {
            self.showActionSheet = false
            self.team = .green
            
        }), .cancel({
            self.showActionSheet = false
        })
        ])
    }
    
    var body :some View {
        
        VStack() {
            Button(action: {
                self.showActionSheet = self.showActionSheet ? false : true
                self.isUpdated = true
            }, label: { Text("Action Sheet").color(.black) })
                .presentation($showActionSheet) { () -> ActionSheet in
                    return myactionSheet
            }
        }.frame(width: 350, height: 700, alignment: .center)
        .background(self.team)
    }
    
}

struct ActionSheet_Container : View {
    
    var body:some View {
        TabbedView {
            Action_View()
                .tabItem { Text("Date_Picker_Stack")
            }.tag(0)
            
            ActionSheet_Buttond()
                .tabItem { Text("DatePicker_formatter")
            }.tag(1)
        }
    }
    
}

#if DEBUG
struct Action_View_Previews : PreviewProvider {
    static var previews: some View {
        ActionSheet_Buttond()
    }
}
#endif
