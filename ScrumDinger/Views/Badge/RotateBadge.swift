//
//  RotateBadge.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 16/10/21.
//

import SwiftUI

struct RotateBadge: View {
    let angle: Angle
        
        var body: some View {
            BadgeSymbol()
                .padding(-60)
                .rotationEffect(angle, anchor: .bottom)
        }
}

struct RotateBadge_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadge(angle: Angle(degrees: 5))
    }
}
