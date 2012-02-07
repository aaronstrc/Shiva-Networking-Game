--------------------------------------------------------------------------------
--  Function......... : sendCreateBroadcast
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.sendCreateBroadcast ( nUserID )
--------------------------------------------------------------------------------
	
    log.warning ( nUserID )
    
    --Send our local user name to the new distant user
    --gets the current user position
    --to send to the other users
    local hUserAvatar = scene.getTaggedObject ( user.getScene ( this.getUser ( ) ), this.sUserID ( ) )
    
    log.warning ( nUserID )
    
    --checks if the users tagged object exist
    if( hUserAvatar ~= nil ) then
    
        local x, y, z = object.getTranslation ( hUserAvatar, object.kGlobalSpace )
    
        --get user count to see whether or not we need to broadcast
        local nUserC = scene.getUserCount ( user.getScene ( this.getUser ( ) ) )
    
        if(nUserC > 1) then
        
            --sends event to the user that joined your here now wait for reply
            scene.sendEventToAllUsers ( user.getScene ( this.getUser ( ) ), "Network_Connection", "onNewAvatar", nUserID, x, y, z )
    
            log.message ( "User Enter Scene : ", nUserID )
        else
        
            log.message ( " only one user " )
        
        end
        
    
    else
        --messages out could not find tagged object
        log.warning ( "could not find tagged object" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
