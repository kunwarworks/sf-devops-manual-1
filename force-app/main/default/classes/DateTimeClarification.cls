public class DateTimeClarification {
    public static void allValues(){
        DateTime myDate= DateTime.newInstance(2026,01,31,20,00,00); //this input in PST
        DateTime myDate1= DateTime.newInstanceGMT(2026,01,31,20,00,00); //this inputs in GMT
        System.debug('The inout is : 2026,01,31,20,00,00');
        
        System.debug('The output for "newInstance" : '+mydate); //returns GMT converted value of the PST DT input (PST input + 8hrs)
        System.debug('The output for "String.ValueoF(myDate)" : '+String.ValueoF(myDate)); //returns PST string value of the PST DT input 
        System.debug('The output for "String.ValueoFGmt(myDate)" : '+String.ValueoFGmt(myDate)); //returns GMT converted string value of the PST DT input
        
        
        System.debug('The output for "newInstanceGMT" : '+mydate1); //returns same value as input as it is input in GMT already (no GMT conversion needed)
        System.debug('The output for "String.ValueoF(myDate1)" : '+String.ValueoF(myDate1)); //returns PST converted string value of the GMT input (GMT input -8hrs)
        System.debug('The output for "String.ValueoFgmt(myDate1)" : '+String.ValueoFGmt(myDate1)); // Return GMT string value of the GMT DT input
        
    }
}