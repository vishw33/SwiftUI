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
    @State private var isUpdated = true
    var team = "Choose team"
    
    var myactionSheet:ActionSheet {
        
        
        ActionSheet(title: Text("My Action Sheet"), message: Text("Choose your Fav Team"), buttons: [.default(Text("Team Red"), onTrigger: {
                self.showActionSheet = false
                self.isUpdated = true
        }),.default(Text("Team Blue"), onTrigger: {
            self.showActionSheet = false
            self.isUpdated = true
        }) ,.default(Text("Team Green"), onTrigger: {
            self.showActionSheet = false
            self.isUpdated = true
        }), .cancel({
            self.showActionSheet = false
        })
        ])
    }
    
    
    var body :some View {
        
        VStack() {
    
            if isUpdated {
                Text(team)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            Button(action: {
                self.showActionSheet = self.showActionSheet ? false : true
            }, label: { Text("Action Sheet") })
                .presentation($showActionSheet) { () -> ActionSheet in
                    myactionSheet
            }
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
