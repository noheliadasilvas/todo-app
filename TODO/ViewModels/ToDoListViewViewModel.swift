//
//  ToDoListViewViewModel.swift
//  TODO
//
//  Created by Nohelia Da Silva on 1/23/24.
//

import Foundation
import FirebaseFirestore

// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    // Delete ToDoListItem
    // - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
