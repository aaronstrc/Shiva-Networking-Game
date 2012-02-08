--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimpleCameraAI.onInit (  )
--------------------------------------------------------------------------------

    --gets the current user id
    this.nUserID(user.getID ( application.getCurrentUser ( )))
    
    this.sUser( "AVATAR "..this.nUserID() )
    
    --gets the camera and avatar object
    this.hSimpleCamera ( this.getObject ( ) )
    
    this.hAvatar ( scene.getTaggedObject ( object.getScene ( this.getObject ( ) ), this.sUser ( ) ))
    
    --checks to see if the avatar exist
    if(this.hAvatar ( ) ~= nil) then
    
        --calls a function to match the avatar
        this.matchAvatar ( )
	
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
