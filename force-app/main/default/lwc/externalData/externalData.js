import { LightningElement, wire, api } from 'lwc';
import getExternalList from '@salesforce/apex/ExternalContractController.getExternalList';

export default class ExternalData extends LightningElement {
// Flexipage gives us the recordId and objectApiName
 @api recordId;
 @api objectApiName;
 fields = ['Name']; 
// Calling the Apex method using Wire Decorator with a Parameter
 @wire(getExternalList, { accId: '$recordId' }) 
 external;
}