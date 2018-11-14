
import UIKit
import CoreData

class ViewController: UIViewController {
     var context:NSManagedObjectContext!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        // 2. Mandatory - initialize the context variable
        // This variable gives you access to the CoreData functions
        self.context = appDelegate.persistentContainer.viewContext
        
        let p = Persons(context: self.context)
        p.email = "akash2@gmail.com"
        p.name = "Akashdeep Singh"
        
        do {
            // Save the user to the database
            // (Send the INSERT to the database)
            try self.context.save()
            print("data saved")
            
            // Getting data from the database
            
            
            
            let fetchRequest:NSFetchRequest<Persons> = Persons.fetchRequest()
            
            do {
                let results = try self.context.fetch(fetchRequest) as [Persons]
                
                // Loop through the database results and output each "row" to the screen
                print("Number of items in database: \(results.count)")
                
                for x in results {
                    print("User Email: \(x.email!)")
                    print("User Password: \(x.name!)")
                }
                
                // with where
                
                let fetchRequest:NSFetchRequest<Persons> = Persons.fetchRequest()
                fetchRequest.predicate =  NSPredicate(format: "email == %@", "akash2@gmail.com")
                
                do {
                    
                    let results = try self.context.fetch(fetchRequest) as [Persons]
                    
                    // Loop through the database results and output each "row" to the screen
                    print("Number of items in database: \(results.count)")
                    
                    if (results.count == 1) {
                       // editScreen.person = results[0] as P
                        
                        print(results[0])
                    }
                    
                }
                catch {
                    print("Error when fetching from database")
                }
                
                
                
            }
            catch {
                print("Error when fetching from database")
            }
            
            
        }
        catch {
            print("Error while saving to database")
        }
    }


}
