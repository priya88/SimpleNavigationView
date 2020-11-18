//
//  ContentView.swift
//  SimpleNavigationView
//
//  Created by Priyanka Saroha on 11/1/20.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.barTintColor = .orange
        navigationBarAppearance.tintColor = .white
        
        //Use this if NavigationBarTitle is with Large Font
        
       // navigationBarAppearance.largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont(name: "Georgia-Bold", size: 30)!]
    }
    
    // Shows number of items
    
    @State var numberOfItems = 0
    
    var body: some View {
        
        NavigationView {

            // Navigation link destination can be set to custom view
            // DetailsView is the another SwiftUI view which is set as destination for navigation link
            NavigationLink(destination: DetailsView()) {

                // Text to display number of items count

                Text("Total number of items: \(numberOfItems)")
                    .font(.headline)
                    .navigationBarItems(leading:
                        Button("Remove") {
                            guard numberOfItems > 0 else {return}
                            numberOfItems -= 1
                        }
                    , trailing:
                        Button("Add") {
                            numberOfItems += 1
                        }

                )
            }
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct DetailsView: View {
    var body: some View {
        Text("This is the detailed view")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

