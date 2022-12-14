//
//  ContentView.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var shifts: [Shift] = Shift.allShifts
    
    var body: some View {
        NavigationView {
            HStack {
                List {
                    ForEach(shifts, id: \.name) { shift in
                        Text("\(shift.name) (\(shift.role)) + (formattedDate) + \(shift.color)")
                    }
                    //.listRowBackground(shift.color)
                }
                
            }

            .navigationTitle("Coffee Co Shifts")
            .accessibilityIdentifier("shiftListTitle")
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        //action: CreateShiftFormView()
                    } label: {
                        Text("Add Shift")
                            .padding(.horizontal)
                            .accessibilityIdentifier("addShiftBtn")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
