import { LightningElement,api,wire } from 'lwc';
import {getRecord,getFieldValue} from 'lightning/uiRecordApi';

//import NAME_FIELD from '@salesforce/schema/Account.Name';
//import PHONE_FIELD from '@salesforce/schema/Account.Phone';

//Reference to field access data.
export default class WireAdapter extends LightningElement {
    @api recordId;
    
    @wire(getRecord,{recordId:'$recordId',fields:['Accounts.Name','Accounts.Phone']})
    record;

    get name(){
        //return this.record.data ? getFieldValue(this.record.data,'Accounts.Name'):" ";
        
        return this.record.data.fields.Name.value;

    } 

    get phone(){
        //return this.record.data ? getFieldValue(this.record.data,'Accounts.Phone'): " ";
        
        //fetch data use APIs
        return this.record.data.fields.Phone.value;

    }
}
