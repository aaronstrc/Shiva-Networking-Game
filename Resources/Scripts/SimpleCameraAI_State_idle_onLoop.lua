--------------------------------------------------------------------------------
--  State............ : idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimpleCameraAI.idle_onLoop ( )
--------------------------------------------------------------------------------
    
    --if the avatar exist move him
    if(this.hAvatar ( ) ~= nil) then
        
        --variable to see if avatar moved
        local bMoved = false
        
        if ( this.bMoveForward( ) == true ) then
            object.translate( this.hAvatar ( ), 0, 0, .1, object.kLocalSpace )
            bMoved = true
        end
        if ( this.bMoveBackward ( ) == true ) then
            object.translate( this.hAvatar ( ), 0, 0, -.1, object.kLocalSpace )
            bMoved = true
        end
        if ( this.bRotateLeft ( ) == true ) then
            object.rotate( this.hAvatar ( ), 0, 3, 0, object.kLocalSpace )
            bMoved = true
        end
        if ( this.bRotateRight ( ) == true ) then
            object.rotate( this.hAvatar ( ), 0, -3, 0, object.kLocalSpace )
            bMoved = true
        end
	
        --broadcast new postion if moved
        if(bMoved == true) then
            this.matchAvatar ( )
            this.broadCastPos ( )
            this.broadCastRot ( )
        end
    
    else
        
        --sets the string again
        this.sUser ( "Avatar "..user.getID ( application.getCurrentUser ( )) )
        
        this.hAvatar ( scene.getTaggedObject ( object.getScene ( this.getObject ( ) ), this.sUser ( ) ))
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
