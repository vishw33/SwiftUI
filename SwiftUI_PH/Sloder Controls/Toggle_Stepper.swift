//
//  Toggle_Stepper.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 20/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Toggle_Stepper : View {
    
    @State private var isON = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            Toggle(isOn: $isON) {
                Text("Switch")
                    .bold()
                    .foregroundColor(.blue)
            }.padding()
            
            
            Spacer()
            
            Toggle("Switch On", isOn: $isON)
            
            Spacer()
        }
    }
}



#if DEBUG
struct Toggle_Stepper_Previews : PreviewProvider {
    static var previews: some View {
        Toggle_Stepper()
        .padding([.leading, .trailing])
    }
}
#endif
