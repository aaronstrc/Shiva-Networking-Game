--------------------------------------------------------------------------------
--  State............ : idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.idle_onLoop ( )
--------------------------------------------------------------------------------
	
    --code below changes the avatars mode
    if ( this.nHandlerCount ( ) > 0 ) then
    
        this.handleRun ( )
    
    --if no keys are pressed then just idle
    elseif ( this.nHandlerCount() <= 0) then
        
        this.handleIdle ( )
        
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
