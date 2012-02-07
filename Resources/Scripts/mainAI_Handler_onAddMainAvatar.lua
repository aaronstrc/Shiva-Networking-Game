--------------------------------------------------------------------------------
--  Handler.......... : onAddMainAvatar
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function mainAI.onAddMainAvatar ( sName, posX, posY, posZ )
--------------------------------------------------------------------------------
	
	log.warning ( sName )
    
	--adds object to the scene
    if( not string.isEmpty ( sName )) then

        local hScene = application.getCurrentUserScene ( )
    
        --if scene not nil then
        --create dynamic tagged object
        if(hScene ~= nil) then
        
            local hRObject = scene.createRuntimeObject ( hScene, "tBox" )
        
            --if the run object was created then
            --add a tag
            if( hRObject ~= nil) then
                
                local nUserID = user.getID ( this.getUser ( ) )
                local sUserID = "AVATAR "..nUserID
                
                --adds the new user to the hash table
                if(not hashtable.contains ( this.htUserList ( ), sName ) and sName ~= sUserID) then
                
                    hashtable.add ( this.htUserList ( ), sName, sName )
                
                end
                
                scene.setObjectTag ( hScene, hRObject, sName )
                
                object.setTranslation ( hRObject, posX, posY, posZ, object.kGlobalSpace )
                
                log.message ( "added the box: ", sName )
            
            end
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
