--------------------------------------------------------------------------------
--  State............ : Connect
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function networkAI.Connect_onLoop ( )
--------------------------------------------------------------------------------
	
	local hCurrentServer = network.getCurrentServer ( )
    if ( hCurrentServer )
    then
        
        if ( server.getStatus ( hCurrentServer ) == server.kStatusNone )
        then
            log.warning ( "Server Status : None => WasDisconnected" )
           
        elseif ( server.getStatus ( hCurrentServer ) == server.kStatusPending )
        then
                log.message ( "Server Status : Pending" )
                
        elseif ( server.getStatus ( hCurrentServer ) == server.kStatusConnected )
        then
            local hCurrentSession = server.getCurrentSession ( hCurrentServer )
            if ( hCurrentSession == nil )
            then
                log.message ( "Entering in session : Default" )
                server.setCurrentSession ( hCurrentServer, "Default" )
                
            elseif ( session.getStatus ( hCurrentSession ) == session.kStatusNone )
            then
                log.message ( "Entering in session : Default" )
                server.setCurrentSession ( hCurrentServer, "Default" )
                
            elseif ( session.getStatus ( hCurrentSession ) == session.kStatusPending )
            then
                log.message ( "Current Session status : Pending" )
            
            elseif ( session.getStatus ( hCurrentSession ) == session.kStatusConnected )
            then
                --start playing
                if ( application.getCurrentUserScene ( ) == nil or this.bIdSet ( ) == false ) 
                then    
                    --this.StartPlaying ( )
                    this.addMainUser ( )
                    this.sendCreateBroadcast ( this.nUserId ( ))
                end
            end
        end
    else
        log.warning ( "Server doesn't exist => WasDisconnected" )
        
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
