<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populating_UserID_with_Sender_ID</fullName>
        <description>Populates the external unique ID UserID with the Sender ID</description>
        <field>UserID__c</field>
        <formula>Sender__r.Id</formula>
        <name>Populating UserID with Sender ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Unique User ID Creation%2FUpdate</fullName>
        <actions>
            <name>Populating_UserID_with_Sender_ID</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates the external unique ID field UserID with the Sender ID each time a new Processor Control record is created or the existing Processor Control record is edited</description>
        <formula>OR(ISNEW(),AND(NOT(ISNEW()),ISCHANGED( Sender__c )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
