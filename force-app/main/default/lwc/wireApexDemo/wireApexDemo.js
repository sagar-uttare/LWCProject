import { LightningElement,api,wire} from 'lwc';
import getContact from '@salesforce/apex/ContactController.getContact';

export default class WireApexDemo extends LightningElement {
    @api recordId;

    @wire(getContact ,{accId:'$recordId'})
    contacts;
    
}