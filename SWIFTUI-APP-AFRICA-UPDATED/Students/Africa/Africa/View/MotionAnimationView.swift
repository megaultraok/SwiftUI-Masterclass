//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Jada White on 6/7/21.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - Properties
    
    
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { geometry in
            Text("Width: \(Int(geometry.size.width)) Height: \(Int(geometry.size.height))")
        } // Geometry
    }
}

// MARK: - Preview

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
