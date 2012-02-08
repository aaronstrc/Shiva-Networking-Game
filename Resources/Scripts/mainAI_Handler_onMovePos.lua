--------------------------------------------------------------------------------
--  Handler.......... : onMovePos
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function mainAI.onMovePos ( sName, posX, posY, posZ )
--------------------------------------------------------------------------------
    
    --gets the user that moved
	local hUser = scene.getTaggedObject ( application.getCurrentUserScene ( ), sName )
    
    --if the object exist then
    --update translation
    if(hUser ~= nil) then
    
        object.setTranslation ( hUser, posX, posY, posZ, object.kGlobalSpace )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
