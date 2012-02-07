--------------------------------------------------------------------------------
--  Handler.......... : onNewAvatar
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.onNewAvatar ( nUserID, posX, posY, posZ )
--------------------------------------------------------------------------------
	
    --creates the user name the sends event
    --to the main ai to create the avatar
    local sUserID = "AVATAR "..nUserID
	
    --sends event to the main ai
    user.sendEvent ( this.getUser ( ), "mainAI", "onAddAvatar", sUserID,  posX, posY, posZ)
    
    --gets current user position
    local hUAvatar = application.getCurrentUserSceneTaggedObject ( this.sUserID ( ) )
    local x, y, z = object.getTranslation ( hUAvatar, object.kGlobalSpace ) 
    
    --sends a reply back to the user to create the model and set position
    user.sendEvent ( application.getUser ( nUserID ), "networkAI", "onReply", user.getID ( this.getUser ( )), x, y, z)
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
