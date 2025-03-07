import { LightningElement } from 'lwc';

export default class Datablinding extends LightningElement {

    firstName = '';
    lastName = '';

    handleChange(event){
        const fields = event.target.name;
        console.log(fields);
        if(fields ==='fName'){
            this.firstName = event.target.value;
        }else if(fields ==='lame'){
            this.lastName = event.target.value;
        }
    }
    get upperCase(){
        // return `${this.firstName} ${this.lastName}`.toUpperCase();
        return `${this.firstName === this.firstName.toUpperCase() ? this.firstName.toLowerCase() : this.firstName.toUpperCase()} ${this.lastName === this.lastName.toUpperCase() ? this.lastName.toLowerCase() : this.lastName.toUpperCase()}`;
    }

    firstName1='';
    lastName1='';

    handleClick() {
        // Use the querySelectorAll method to get all lightning-input elements
        const inputs = this.template.querySelectorAll('lightning-input');
        
        // Loop through the inputs to capture values
        inputs.forEach((element) => {
            if (element.name === 'fname') {
                this.firstName1 = element.value;  // Capture first name value
            } else if (element.name === 'lname') {
                this.lastName1 = element.value;  // Capture last name value
            }
        });
    }

}