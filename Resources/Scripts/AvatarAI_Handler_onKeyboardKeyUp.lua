--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
    if ( kKeyCode == input.kKeyW ) then
        this.nHandlerCount ( this.nHandlerCount ( ) - 1)
    end
    if ( kKeyCode == input.kKeyA ) then
        this.nHandlerCount ( this.nHandlerCount ( ) - 1)
    end
    if ( kKeyCode == input.kKeyS ) then
        this.nHandlerCount ( this.nHandlerCount ( ) - 1)
    end
    if ( kKeyCode == input.kKeyD ) then
        this.nHandlerCount ( this.nHandlerCount ( ) - 1)
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
