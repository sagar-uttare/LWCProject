trigger AccountTrigger on Account (before insert,before update) {
    for(Account acc : Trigger.New){
        acc.Industry = 'Education';
        if (acc.Description == null){
        acc.Description = 'The Account Description was Blank.';
    }
    } 
    for(Account acc : Trigger.New){
        acc.ShippingStreet = acc.BillingStreet;
        acc.ShippingCity   = acc.BillingCity; 
        acc.ShippingState  = acc.BillingState;
        acc.ShippingPostalCode = acc.BillingPostalCode;
        acc.ShippingCountry = acc.BillingCountry;
    }
 
}