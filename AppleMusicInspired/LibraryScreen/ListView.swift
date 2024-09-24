//
//  ListView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 11/09/2024.
//

import SwiftUI

struct ListView: View {

    @State private var cellsContent = CellContent.libraryPoints()
    @State private var multiselection = Set<UUID>()
    @State private var isEditMode: EditMode = .active

    var body: some View {

            List(selection: $multiselection) {
                ForEach(cellsContent) { cell in
                    CellView(cell: cell)
                }
                .onMove { cellsContent.move(fromOffsets: $0, toOffset: $1) }
            }
            .foregroundColor(Color(hue: 1.0, saturation: 0.078, brightness: 0.252))
            .navigationTitle("Library")
           // .navigationBarItems(
            //    trailing: NavigationLink("Done", destination: TabBarView()))
            .listStyle(.inset)
           .toolbar { EditButton() }
            .environment(\.editMode, self.$isEditMode)
        }
    }




#Preview {
    ListView()
}
