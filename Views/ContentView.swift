//
//  ContentView.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var shift: [Shift] = Shift.allShifts
    
    var body: some View {
        NavigationView {
            HStack {
                List {
                    ForEach(shift, id: \.name) { shift in
                        Text(shift.role)
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
