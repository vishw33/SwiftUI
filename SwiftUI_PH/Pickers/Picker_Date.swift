//
//  Picker_Date.swift
//  SwiftUI_PH
//
//  Created by Vishwas on 14/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import SwiftUI

struct Picker_Date : View {
    @State private var mydate = Date()
    var body: some View {
        VStack {
            DatePicker($mydate)
            Text("Date and time is \(mydate)")
                .padding()
                .lineLimit(nil)
            Spacer()
            Text("This is simple date Picker")
                .font(.footnote)
                .color(.gray)
            Spacer()
        }
    }
}

struct Picker_Formatter : View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State private var mydate = Date()
    
    var body: some View {
        VStack {
            DatePicker($mydate)
            Text("Date and time is \(mydate ,formatter: dateFormatter)")
                .padding()
                .lineLimit(nil)
            Spacer()
            Text("This is simple date Picker with Formatter")
                .font(.footnote)
                .color(.gray)
            Spacer()
        }
    }
}

struct datePicker_Form : View {
    
    @State var datePicked = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        Form {
            DatePicker($datePicked) {
                VStack {
                    Text("Date Picked")
                    Text("\(datePicked ,formatter: dateFormatter)")
                }
            }
            
            Spacer()
            Text("This is simple date Picker with Form")
                .font(.footnote)
                .color(.gray)
            Spacer()
        }
        
    }
    
}

struct datePicker_component: View {
    @State var datePicked = Date()
    
    func datesToSet(isMin:Bool) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        var comps = DateComponents()
        comps.year = isMin ? -30 : 30
        let minDate = calendar.date(byAdding: comps, to: Date())
        guard let datetosend = minDate else {
            return Date()
        }
        return datetosend
    }
   
  
    
    var body : some View {
        Form {
            Section {
                DatePicker(
                    $datePicked,
                    minimumDate: datesToSet(isMin: true),
                    maximumDate: Date(),
                    displayedComponents: [.hourAndMinute],
                    label: { Text("Hour and Min") }
                )
            }
            
            Section {
                DatePicker(
                    $datePicked,
                    minimumDate: datesToSet(isMin: true),
                    maximumDate: Date(),
                    displayedComponents: [ .date],
                    label: { Text("Date") }
                )
                
            }
            Spacer()
            Spacer()
            Spacer()
            Section {
                Text("This is simple date Picker with Form and date Components")
                    .font(.footnote)
                    .color(.gray)
            }
        }
    }
}

struct DatePicker_Container : View {
    
    var body:some View {
        TabbedView {
            Picker_Date()
                .tabItem { Text("Date_Picker_Stack")
            }.tag(0)
                
            Picker_Formatter()
                .tabItem { Text("DatePicker_formatter")
            }.tag(1)
            
            datePicker_Form()
                .tabItem { Text("DatePicker_Form")
            }.tag(2)
            
            datePicker_component()
                .tabItem { Text("DatePicker_component")
            }.tag(3)
        }
    }
    
}

#if DEBUG
struct Picker_Date_Previews : PreviewProvider {
    static var previews: some View {
        datePicker_component()
    }
}

struct Picker_Date_Previews2 : PreviewProvider {
    static var previews: some View {
        Picker_Formatter()
    }
}

struct Picker_Date_Previews3 : PreviewProvider {
    static var previews: some View {
        datePicker_Form()
    }
}

struct Picker_Date_Previews4 : PreviewProvider {
    static var previews: some View {
        datePicker_component()
    }
}
struct Picker_Date_Previews5 : PreviewProvider {
    static var previews: some View {
        DatePicker_Container()
}
}

#endif
