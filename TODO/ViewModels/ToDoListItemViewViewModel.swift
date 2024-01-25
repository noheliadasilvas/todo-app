//
//  ToDoListItemViewViewModel.swift
//  TODO
//
//  Created by Nohelia Da Silva on 1/23/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// ViewModel for single of items view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
