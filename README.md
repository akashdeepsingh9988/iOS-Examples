# iOS-Examples



https://www.ralfebert.de/ios-examples/uikit/uitableviewcontroller/



// table select row

override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    let indexPath = tableView.indexPathForSelectedRow() //optional, to get from any UIButton for example

    let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell

    print(currentCell.textLabel!.text)
