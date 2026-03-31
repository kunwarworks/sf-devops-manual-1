public class VariableScopeExample {
    public static void scopeCheck(){
        integer i=10;
        System.debug('Value of i is = '+i);
        
        Season CurrentSeason= Season.Summer;
        if(currentSeason==Season.Summer)
            System.debug('Its warm here');
        else if(currentSeason==Season.Winter)
            System.debug('Its Cold here');
    }
    Public Enum Season{
        Winter, Summer
            }
}