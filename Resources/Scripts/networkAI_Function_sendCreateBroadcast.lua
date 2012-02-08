--------------------------------------------------------------------------------
--  Function......... : sendCreateBroadcast
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.sendCreateBroadcast ( nUserID )
--------------------------------------------------------------------------------
    
    --Send our local user name to the new distant user
    --gets the current user position
    --to send to the other users
    local hUserAvatar = scene.getTaggedObject ( user.getScene ( this.getUser ( ) ), this.sUserID ( ) )
    
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
        
                user.sendEvent ( hUIScene, "networkAI", "onNewAvatar", nUserID, x, y, z )
            
            end
        end
        
        user.sendEvent ( this.getUser ( ), "mainAI", "onsetCamera" )
        
    else
        --messages out could not find tagged object
        log.warning ( "could not find tagged object" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
