--------------------------------------------------------------------------------
--  Function......... : handleRun
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.handleRun ( )
--------------------------------------------------------------------------------
	
	 --sets jump animation
        if( this.bJump ( ) == true) then
            
            --if the jump sequence has ended set this.bJump ( ) to false
            if( animation.getPlaybackCursor ( this.hAvatar ( ), 0 ) >= hashtable.get (this.htAnimations ( ), "runjump_end"  ) - 1) then
                this.bJump ( false )
            else
                this.setJump (  )
            end
            
        --sets punch
        elseif(this.bPunch ( ) == true) then
            
            --if the punch sequence has ended set this.bPunch ( ) to false
            if( animation.getPlaybackCursor ( this.hAvatar ( ), 0 ) >= hashtable.get (this.htAnimations ( ), "punch_end"  ) - 1) then
                this.bPunch ( false )
            else
                this.setPunch (  )
            end
        
        --sets run
        else
            this.setRun ( )
        end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
