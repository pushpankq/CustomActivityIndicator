//
//  ContentView.swift
//  CustomActivityIndicatorSwiftUI
//
//  Created by Pushpank Kumar on 06/07/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        CustomActivityIndicator()
            .frame(width: 100, height: 100)
            .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
