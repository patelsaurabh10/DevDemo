({
	/*getData : function(component, event, helper) {
		var action = component.get("c.getEstimateData");
        action.setCallback(this,function(a){
            console.log("Data Invalid****"+a.getReturnValue());
            component.set("v.DataValues",a.getReturnValue());
        });
        $A.enqueueAction(action);
	},*/
    scriptsLoaded : function(component, event, helper) {
        console.log('script loaded');
    },
   
    doInit : function(component,event,helper){
        var dataId=component.get("v.idval");
        console.log("Id Value***"+dataId);
        var action = component.get("c.getEstimateCardData");
        action.setParams({
            "Identifier": dataId
        });
        action.setCallback(this,function(a){
            console.log("Data Of 1****"+a.getReturnValue());
            component.set("v.DataValues",a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    
    handleSelect: function (cmp, event, helper) {
        // This will contain the string of the "value" attribute of the selected
        // lightning:menuItem
        var selectedMenuItemValue = event.getParam("value");
        alert("Menu item selected with value: " + selectedMenuItemValue);
    }
})