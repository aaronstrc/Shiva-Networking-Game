--------------------------------------------------------------------------------
--  Function......... : setJump
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setJump ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the jump animation code for gingy
	--
    local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        animation.setCurrentClip ( this.hAvatar ( ), 0, hashtable.get ( this.htAnimations ( ), "jump") )
        
        --sets the right keys frames
        --if this.nHandlerCount ( ) is greater than zero then running and jump
        --so different key frames
        if(this.nHandlerCount ( ) > 0) then
            
            --edits the run clip to the correct beginning frame
            animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "runjump_begin" ) )
        
            --edits the run clip to the correct ending frame
            animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "runjump_end" ) )
        
        else
            --edits the jump clip to the correct beginning frame
            animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "jump_begin" ) )
        
            --edits the jump clip to the correct ending frame
            animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "jump_end" ) )
        end
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
