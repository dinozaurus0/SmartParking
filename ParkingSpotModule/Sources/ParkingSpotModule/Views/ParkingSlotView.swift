//
//  ParkingSlotView.swift
//  
//
//  Created by Vlad Grigore Sima on 05.01.2023.
//

import SwiftUI

public struct ParkingSlotView: View {
    private let colors: [Color] = [.blue, .red, .green, .purple, .pink, .orange, .gray, .cyan, .black, .white, .brown]

    public var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0, content: {
            ForEach(0..<80, content: { _ in
                GridRow {
                    ForEach(0..<80) { _ in
                        let index = Int.random(in: 0..<colors.count)
                        colors[index]
                    }
                }
            })
        })
        .ignoresSafeArea()
    }
}

internal struct ParkingSlotView_Previews: PreviewProvider {
    internal static var previews: some View {
        ParkingSlotView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}

/*
 TODO:
 1. Create the grid that is to be a matrix of n*m elements.
 n*m matrix -->
 2. Force the screen to rotate in landscape when this screen is entered. (this will be done when linked with the main module and the coordinators if there will be any)
 */
