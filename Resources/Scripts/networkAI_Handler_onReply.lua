--------------------------------------------------------------------------------
--  Handler.......... : onReply
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.onReply ( nUserID, posX, posY, posZ )
--------------------------------------------------------------------------------
	
	--creates the user name the sends event
    --to the main ai to create the avatar
    local sUserID = "AVATAR "..nUserID
	
    --sends event to the main ai
    user.sendEvent ( this.getUser ( ), "mainAI", "onAddAvatar", sUserID,  posX, posY, posZ)
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
