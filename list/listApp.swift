//
//  listapp.swift
//  list
//
//  Created by Nolan Laake on 2/16/24.
//

import SwiftUI


@main
struct listApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
//
//    #Preview {
//    listApp()
//}

//#Preview {
//    listApp()
//}
