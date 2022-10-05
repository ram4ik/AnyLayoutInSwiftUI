//
//  ContentView.swift
//  AnyLayoutInSwiftUI
//
//  Created by Ramill Ibragimov on 05.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var toggleLayout = false
    
    var body: some View {
        
        let layout = toggleLayout ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        
        layout {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello")
            Text("world")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
        .padding()
        .onTapGesture {
            withAnimation {
                toggleLayout.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
