--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimpleCameraAI.onInit (  )
--------------------------------------------------------------------------------
	
    this.hSimpleCamera ( this.getObject ( ) )
    this.hAvatar ( application.getCurrentUserSceneTaggedObject ("gingy"))
    
    object.matchRotation ( this.hSimpleCamera ( ), this.hAvatar ( ), object.kGlobalSpace )
    object.setRotation ( this.hSimpleCamera ( ), 0, 180, 0, object.kLocalSpace )
    object.matchTranslation ( this.hSimpleCamera ( ), this.hAvatar ( ), object.kGlobalSpace )
    object.translate ( this.hSimpleCamera ( ), 0, 1.5, 5, object.kLocalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
