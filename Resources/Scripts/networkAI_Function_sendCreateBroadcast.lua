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
        
        --sends to all the users except 
        for i=0, nUserC-1, 1 do
        
            local hUIScene = scene.getUserAt ( user.getScene ( this.getUser ( ) ), i )
        
            --not current user send message
            if( user.getID ( hUIScene ) ~= nUserID ) then
        
                log.warning( "User Enter Scene : ", hUIScene )
                user.sendEvent ( hUIScene, "networkAI", "onNewAvatar", nUserID, x, y, z )
            
            end
        end
        
        --sends event to the user that joined your here now wait for reply
        --scene.sendEventToAllUsers ( user.getScene ( this.getUser ( ) ), "networkAI", "onNewAvatar", nUserID, x, y, z )
    
        log.warning( "User Enter Scene : ", nUserID )
        
    else
        --messages out could not find tagged object
        log.warning ( "could not find tagged object" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
