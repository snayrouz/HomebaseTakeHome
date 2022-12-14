//
//  CreateShiftFormView.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import SwiftUI

struct CreateShiftFormView: View {
    // This is never ideal especially when the array is much larger
    @State var startDate = Date()
    @State var endDate = Date()
    @State var employees = ["Anna","Eugene", "Keyvan", "Anton"]
    @State var roles = ["Front of House","Prep", "Cook", "Waiter"]
    @State var colors = ["red", "blue", "green"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select a start and end date")) {
                    DatePicker("Start Date",selection: $startDate, displayedComponents: .date)
                    DatePicker("End Date",selection: $endDate, displayedComponents: .date)
                } .accessibilityIdentifier("datePicker")
                
                Section(header: Text("Which Employee?")) {
                    Picker("Employee", selection: $employees) {
                        ForEach(employees, id: \.self) {
                            Text($0)
                        }
                    }
                        .padding(.horizontal)
                }.accessibilityIdentifier("employeePicker")
                
                
                Section(header: Text("What Role?")) {
                    Picker("Role", selection: $employees) {
                        ForEach(roles, id: \.self) {
                            Text($0)
                        }
                    }
                        .padding(.horizontal)
                }.accessibilityIdentifier("rolePicker")
                
                
                Section(header: Text("Select your shifts corresponding color:")) {
                    Picker("Shift Color", selection: $colors) {
                        ForEach(colors, id: \.self) {
                            Text($0)
                        }
                    }
                        .padding(.horizontal)
                }.accessibilityIdentifier("shiftColorPicker")
            }
            
            .navigationTitle("Create a Shift")
            .navigationBarTitleDisplayMode(.inline)
            .accessibilityIdentifier("createShiftNavTitle")
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Save", action: saveShift)
                        .accessibilityIdentifier("Save Button") ///use accessibilityIdentifier for UI testing
                }
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button("< Shifts", action: returnToShiftsList)
                }
            }
        }
    }
    
    func saveShift() {
        //persist saved shift and add to [Shifts]
        print("Shift Saved")
    }
    
    func returnToShiftsList() {
        //Navigate back to ShiftsView. If Shift is saved, should be included in ShiftsView. If Shift not saved, should not include new Shift
        print("Returning to Shift list view")
    }
}

struct CreateShiftFormView_Previews: PreviewProvider {
    static var previews: some View {
        CreateShiftFormView()
    }
}
