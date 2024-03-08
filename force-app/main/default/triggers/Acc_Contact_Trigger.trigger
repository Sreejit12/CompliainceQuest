trigger Acc_Contact_Trigger on Account (after insert,after update) {
     if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            Acc_Contact_Trigger_Handler.trigger_Insert(Trigger.new);
        } else if (Trigger.isUpdate) {
            Acc_Contact_Trigger_Handler.trigger_Update(Trigger.newMap);
        }
    }

}