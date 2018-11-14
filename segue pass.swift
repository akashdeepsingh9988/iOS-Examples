    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("hello")
        //var e = ""
        print(searchTx)
        let secondS = segue.destination as! SecondVCViewController
        secondS.e = self.searchTxt.text!
        print(secondS.e)
        
        
        
        
        //dismiss segue
        
        self.dismiss(animated: true, completion: nil)
        
