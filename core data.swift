//delete code from coredata row


if let result = try? context.fetch(fetchRequest) {
    for object in result {
        context.delete(object)
    }
}
