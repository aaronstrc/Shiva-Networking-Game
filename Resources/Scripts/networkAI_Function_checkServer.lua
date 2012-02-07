
--------------------------------------------------------------------------------
--  Function......... : checkServer
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.checkServer ( )
--------------------------------------------------------------------------------
	
	--connect to the selected server.
    if ( string.isEmpty ( this.sServerIP( ) ) )
    then
        
        --send the error because the string ip was not set
        log.error ( "You must set a Initial value to the variable sServerIP.\nEdit the AIModel named 'Network_Connection'.") 
    
    else
        
        --try to set the server
        network.setCurrentServer ( this.sServerIP ( ) )
        
        --now test to see if the server is working
        local nStatus = network.getStatus ( )
        
        log.message( nStatus )
        
    end
    
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
