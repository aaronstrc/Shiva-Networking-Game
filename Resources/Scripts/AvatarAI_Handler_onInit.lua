--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onInit (  )
--------------------------------------------------------------------------------
	
    --sets the avatar object
    this.hAvatar ( this.getObject ( ) )
    
    --calls the a function to set the animations modes
    if(this.hAvatar ( ) ~= nil) then
        this.setAnimations ( )
        this.setIdle ( )
        
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
