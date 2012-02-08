--------------------------------------------------------------------------------
--  Handler.......... : onMoveRot
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function mainAI.onMoveRot ( sName, posX, posY, posZ )
--------------------------------------------------------------------------------
	
	--gets the user that moved
	local hUser = scene.getTaggedObject ( application.getCurrentUserScene ( ), sName )
    
    --if the object exist then
    --update translation
    if(hUser ~= nil) then
    
        object.setRotation ( hUser, posX, posY, posZ, object.kGlobalSpace )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
