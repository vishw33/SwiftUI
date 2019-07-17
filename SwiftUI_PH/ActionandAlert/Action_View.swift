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
            self.showActionSheet = true
        }, label: { Text("Action Sheet") })
            .presentation(showActionSheet ? myactionSheet: nil)        
    }
    
    
}

#if DEBUG
struct Action_View_Previews : PreviewProvider {
    static var previews: some View {
        Action_View()
    }
}
#endif
