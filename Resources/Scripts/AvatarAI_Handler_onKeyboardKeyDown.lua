-------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    --checks keys that move of rotate the avatar
    if ( kKeyCode == input.kKeyW ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyA ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyS ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyD ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    
    --code that will test jump
    if ( kKeyCode == input.kKeySpace ) then 
        
        --shoots a ray down to test if you can jump
        local x, y, z = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
        local hObject, nDist, nHitSurfID = scene.getFirstHitCollider ( application.getCurrentUserScene ( ), x, y, z, 0, -1, 0, 10)
    
        --if there isn't a great distance from the object that your standing on then jumpwww asd 
        if ( nDist <= 0.1 ) and ( this.bJump ( ) == false ) then
            this.bJump ( true )
            dynamics.setLinearVelocity ( this.hAvatar ( ), 0, 8, 0, object.kLocalSpace )
            dynamics.addLinearImpulse ( this.hAvatar ( ), 0, 8, 0, object.kLocalSpace )
        end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
