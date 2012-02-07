--------------------------------------------------------------------------------
--  Function......... : setRun
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setRun ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the run animation code for gingy
	--
    local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        --sets the current clip to run
        animation.setCurrentClip ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "run" ) )
        
        --sets blending for the animations (allows smooth animations)
        --animation.setPlaybackBlendMode ( this.hAvatar ( ), 0, animation.kPlaybackBlendModeAdditive)
        
        --edits the run clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "run_begin" ) )
        
        --edits the run clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "run_end" ) )
    
    end
    
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
