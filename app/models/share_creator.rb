class ShareCreator < ActiveRecord::Base

  share = Share.new
  share.user_id = params[current_user.id]
  share.venue_id = params[:venue_id]
  share.party_type = "initiator"
  share.type = params[:type]
  share.state = "proposed"  

  sister_share = Share.new
  share.user_id = params[:counterparty_id]
  share.venue_id = nil
  share.party_type = "counterparty"
  share.type = params[:type]
  share.state = "proposed"

end



#only exists for initiator until counterparty accepts
#type = initiator / counterparty
#type = gift or trade
#state = proposed, approved, rejected