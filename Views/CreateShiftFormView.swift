//
//  CreateShiftFormView.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import SwiftUI

struct CreateShiftFormView: View {
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Select a shift start and end date")) {
                    //DatePicker startDate
                    //DatePicker endDate
                }
                
                Section(header: Text("Select an Employee")) {
                    //Picker allEmployees
                }
                
                Section(header: Text("Select the role")) {
                   //Picker allRoles
                }
                
                Section(header: Text("Coordinating Shift Color")) {
                    //Pick allColors || or assign the colors based on the shift
                }
            }
            .navigationTitle("Create A Shift")
        }
    }
}

private extension CreateShiftFormView {
    var save: some View {
        Button("Save") {
            dismiss()
        }
        .accessibilityIdentifier("saveBtn")
    }
}

struct CreateShiftFormView_Previews: PreviewProvider {
    static var previews: some View {
        CreateShiftFormView()
    }
}
