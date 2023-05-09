//
//  ContentView.swift
//  DatePicker
//
//  Created by Joseph Manahan on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("Date: \(selectedDate.formatted(.dateTime.day().month().year()))")
            // add calendar to pick the date
            DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                .labelsHidden()
                .datePickerStyle(.graphical)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
