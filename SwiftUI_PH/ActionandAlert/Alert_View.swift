//
//  Alert_View.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 20/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Alert_View : View {
    @State var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .presentation($showingAlert) {
            Alert(title: Text("This is simple Alert"))
        }
    }
}

struct Alert_View2 : View {
    @State var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .presentation($showingAlert) {
            Alert(title: Text("This is Title"), message: Text("Message Dialog Box"), dismissButton: .cancel())
        }
    }
}

struct Alert_View3 : View {
    @State var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .presentation($showingAlert) {
            Alert(title: Text("Title"), message: Text("Message to log in or Sign out"), primaryButton: .destructive(Text("Sign Out")), secondaryButton: .default(Text("Log In")))
        }
    }
}

struct Alert_Container : View {
    
    var body:some View {
        TabbedView {
            Alert_View()
                .tabItem { Text("Simple Alert")
            }.tag(0)
            
            Alert_View2()
                .tabItem { Text("Alert with cancel")
            }.tag(1)
            
            Alert_View3()
                .tabItem { Text("Alert with Destructive")
            }.tag(2)
        }
    }
}

#if DEBUG
struct Alert_View_Previews : PreviewProvider {
    static var previews: some View {
        Alert_View()
    }
}
#endif
