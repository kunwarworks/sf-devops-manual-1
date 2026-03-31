public class Invoice {
    public String invoiceNumber; 
    public Decimal amount;

    public void printDetails() {
        System.debug(invoiceNumber + '-' + amount);
    }
}

//Invoice newInv= new Invoice();
//newInv.invoiceNumber= 'Inv-909';
//newInv.amount= 222.09;

//newInv.printDetails();

 // // can modify the class with adding a Constructor
   // public Invoice(String invoiceNumber, Decimal amount) {
     //   this.invoiceNumber = invoiceNumber;
       // this.amount = amount;
    // }