//
//  Stepper_View.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 20/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Stepper_View : View {
    
     @State var count:Int = 0
    
    var body: some View {
        Stepper(
            onIncrement: { self.count += 1 },
            onDecrement: { self.count -= 1 },
            label: { Text("Count is \(count)") }
        )
    }
}

#if DEBUG
struct Stepper_View_Previews : PreviewProvider {
    static var previews: some View {
        Stepper_View()
    }
}
#endif
