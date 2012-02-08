--------------------------------------------------------------------------------
--  Handler.......... : onsetCamera
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function mainAI.onsetCamera (  )
--------------------------------------------------------------------------------
	
    --gets current user scene
    local hScene = user.getScene ( this.getUser ( ) )
    
    --creates the camera
    this.hSimpleCamera1 ( scene.createRuntimeObject ( hScene, "DefaultCamera" ))
    
    --sets the current 
    application.setCurrentUserActiveCamera ( this.hSimpleCamera1 ( ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
