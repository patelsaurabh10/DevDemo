({
    scriptsLoaded : function(component, event, helper) {
        console.log('script loaded');
    },
    
	doInit : function(component, event, helper) {
		var action = component.get("c.getEstimateData");
        action.setCallback(this,function(a){
            component.set("v.DataValues",a.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})