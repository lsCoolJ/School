package one.progpracticum;

public class HomePet extends Vertebrate{
    
    private String name;
    private String address;
    private String owner;
    
    public HomePet() {
       this.name = "none";
       this.address = "none";
       this.owner = "none";
    } 
    
    public HomePet(String myClass, String mySpecies, char myGender, double myAge, double myHeight, double myWeight,
                   String myCall, String name, String address, String owner) {
        super(myClass,mySpecies, myGender, myAge,
                      myHeight, myWeight, myCall);

        this.name = name;
        this.address = address;
        this.owner = owner;
    }

    public static void main(String[] args) {
        
        HomePet myHomePet = new HomePet();
        myHomePet.setName("name");
        myHomePet.setAddress("address");
        myHomePet.setOwner("owner");
        System.out.println(myHomePet.getName()+" "+
        myHomePet.getAddress()+" "+
        myHomePet.getOwner());
        
 /*     //For Testing
        HomePet aHomePet = new HomePet("Mammal", "Dog", 'F', 3.1, 23.30, 30.1,
                                        "language", "Raven", "some address", "Monika");
        aHomePet.setName("new name");
        aHomePet.setAddress("New Address");
        aHomePet.setOwner("new owner");
        System.out.println(aHomePet.toString());*/
        
        Vertebrate[] animals = {new Vertebrate("Mammal", "Human", 'F', 3.1, 23.30, 30.1,
                                               "language"), 
                                               new HomePet("Mammal", "Dog",'F', 9.5, 21.0,
                                                           64.5, "woof-woof", "Raven",
                                                           "some address", "Monika"),
                                               new HomePet()};
        
        for (Vertebrate each: animals) {
        System.out.println(each.toString());
        }
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getOwner() {
        return owner;
    }
    public void setOwner(String owner) {
        this.owner = owner;
    }
     @Override
    public String toString() {
         String myString = super.toString();
         myString = myString  + "Name: " + this.name + "\nAddress: " + this.address + "\nOwner: " + this.owner;
        return myString;
    }

}
