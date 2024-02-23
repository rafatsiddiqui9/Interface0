//
//  FGD1.swift
//  Interface0
//
//  Created by Rafat on 23/02/24.
//

import SwiftUI

struct FDG1: View {
    let myNodes = ["A", "B", "C"]
    let myLinks = [("A", "B"), ("B", "C")]


    var body: some View {
        ForceDirectedGraph {
            Series(myNodes) { id in
                NodeMark(id: id)
            }
            Series(myLinks) { from, to in
                LinkMark(from: from, to: to)
            }
        }
    }
}

#Preview {
    FDG1()
}
