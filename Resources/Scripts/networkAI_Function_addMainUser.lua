--------------------------------------------------------------------------------
--  Function......... : addMainUser
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.addMainUser ( )
--------------------------------------------------------------------------------
    
    --sets bIdSet true to take out of render
    this.bIdSet ( true )
	
    --sets the nUserId
    this.nUserId ( user.getID ( this.getUser ( ) ) )
    
    if( this.nUserId() ~= nil) then
        
        this.sUserID ( "AVATAR "..this.nUserId() )
        
        local hScene = application.getCurrentUserScene ( )
    
        --if scene not nil then
        --create dynamic tagged object
        if(hScene ~= nil) then
        
            local hRObject = scene.createRuntimeObject ( hScene, "tBox" )
        
            --if the run object was created then
            --add a tag
            if( hRObject ~= nil) then
                
                scene.setObjectTag ( hScene, hRObject, this.sUserID() )
                
                --sets a random spawn part for the avatar
                object.setTranslation ( hRObject, math.random ( -4, 4 ), 0, math.random ( -4, 4 ), object.kGlobalSpace )
                
                log.message ( "added the main Avatar: ")
            
            end
        end
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
