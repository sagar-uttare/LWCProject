public class MySoqlDemo {
    
    public void searchAccount(String accountName){
        String paramString = '%'+accountName+'%';
        List<Account>NewAccount = [SELECT Id ,Name FROM Account WHERE Name LIKE:paramString];
        System.debug('NewAccount'+NewAccount);
       }
    public static void query(String objectApiName,String fieldToReturn){
        String queryString = 'SELECT '+fieldToReturn+' FROM '+objectApiName+' LIMIT 10 ';
        List<sObject>records = Database.query(queryString);
        System.debug('records '+records);
    }
    
}