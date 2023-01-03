//
//  InformationView.swift
//  GuessTheNumber
//
//  Created by Dominik Kwiecien on 03/01/2023.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        Text("Jessica Szarek" +
        "\n Akademia WSB" +
        "\n Numer albumu: 48295"
        )
        .multilineTextAlignment(.center)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
