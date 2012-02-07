--------------------------------------------------------------------------------
--  State............ : idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimpleCameraAI.idle_onLoop ( )
--------------------------------------------------------------------------------
	if ( this.bMoveForward( ) == true ) then
        object.translate( this.hAvatar ( ), 0, 0, .1, object.kLocalSpace )
    end
    if ( this.bMoveBackward ( ) == true ) then
        object.translate( this.hAvatar ( ), 0, 0, -.1, object.kLocalSpace )
    end
    if ( this.bRotateLeft ( ) == true ) then
        object.rotate( this.hAvatar ( ), 0, 3, 0, object.kLocalSpace )
    end
    if ( this.bRotateRight ( ) == true ) then
        object.rotate( this.hAvatar ( ), 0, -3, 0, object.kLocalSpace )
    end
	
    object.matchRotation ( this.hSimpleCamera ( ), this.hAvatar ( ), object.kGlobalSpace )
    object.setRotation ( this.hSimpleCamera ( ), 0, 180, 0, object.kLocalSpace )
    object.matchTranslation ( this.hSimpleCamera ( ), this.hAvatar ( ), object.kGlobalSpace )
    object.translate ( this.hSimpleCamera ( ), 0, 1.5, 5, object.kLocalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
