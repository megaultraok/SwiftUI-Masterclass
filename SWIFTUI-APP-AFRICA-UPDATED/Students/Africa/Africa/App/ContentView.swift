//
//  ContentView.swift
//  Africa
//
//  Created by Jada White on 6/4/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailedView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } // Link
                } // Loop
            } // List
            .navigationBarTitle("Africa", displayMode: .large)
        } // Navigation
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
