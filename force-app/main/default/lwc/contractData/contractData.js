import { LightningElement, wire, api } from 'lwc';
import getContractList from '@salesforce/apex/ExternalContractController.getContractList';

export default class ContractData extends LightningElement {
    
// Flexipage gives us the recordId and objectApiName
 @api recordId;
 @api objectApiName;
 fields = ['Name']; 
// Calling the Apex method using Wire Decorator with a Parameter
 @wire(getContractList, { accId: '$recordId' }) 
 contract;
}