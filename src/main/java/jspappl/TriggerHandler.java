package jspappl;

public class TriggerHandler {
    private boolean trigger;
    public TriggerHandler(){
        trigger = false;
    }
    public boolean getTrigger() {
        return trigger;
    }
    public void ChangeTrigger() {
        trigger = !trigger;
    }
}
