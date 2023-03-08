//
//  Appear.swift
//  popsbl
//
//  Created by Kazakh on 06.03.2023.
//

import Foundation
import SwiftUI

public struct ShapeDissolveModifier<Mask: View>: ViewModifier {
    
    public let mask: Mask
    public var progress: Double
    
    public func body(content: Content) -> some View {
        content
    }
    public func buildMask(geometry: GeometryProxy, progress: Double) -> some View {
        
        let width = geometry.size.width
        let height = geometry.size.height

        let wUnit = width/10.0
        let hUnit = height/10.0

        // resize the mask to 1/10th of the parent view.
        let maskPiece = mask
            .frame(width: wUnit, height: hUnit, alignment: .center)
        
        // Calculate X Coordinate for a mask copy
        let xCoord = { (x:Int) -> CGFloat in
            wUnit * CGFloat(x)
        }
        
        // Calculate Y Coordinate for a mask copy
        let yCoord = { (y:Int) -> CGFloat in
            hUnit * CGFloat(y)
        }
        
        // Calculate Random Opacity for a mask copy
        let opacity = { () -> Double in
            return Double.random(in: 0...3) * progress + progress
        }
        
        // Combine all of the mask pieces together
        let fullMask = Group {
            ForEach(0..<100) { x in
                maskPiece
                    .offset(x: xCoord(x%10), y: yCoord(x/10))
                    .opacity(opacity())
            }
        }

        return fullMask
    }
}
