--------------------------------------------------------------------------------
--  Function......... : broadCastRot
--  Author........... : Aaron Stricklin
--  Description...... : broadcast the avatars new rotation
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimpleCameraAI.broadCastRot ( )
--------------------------------------------------------------------------------
	
	--gets the objects translation and tag
	local x, y, z = object.getRotation ( this.hAvatar ( ), object.kGlobalSpace )
    
    --gets the scene user count 
    local nCount = scene.getUserCount ( application.getCurrentUserScene ( ) )
    
    --loops through users
    for i=0, nCount-1, 1 do
    
        local hUserInScene = scene.getUserAt ( application.getCurrentUserScene ( ), i )
    
        --checks to see if its not the current user
        if(hUserInScene ~= application.getCurrentUser ( )) then
            
            --sends event to other users to update the postion 
            user.sendEvent ( hUserInScene, "mainAI", "onMoveRot", this.sUser ( ), x, y, z )
        
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
