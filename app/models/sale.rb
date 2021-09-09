class Sale < ApplicationRecord

	before_create :generate_guid
	belongs_to :content
	
	include AASM
	aasm colum: 'state' do
		state :sleeping, initial: true
		state :running
		state :completed
		state :errored	
		
		event :running, after: :charge_card do
			transactions from: :sleeping, to: :running
		end 
		
		event :complete do
			transactions from: :running, to: :completed
		end 
		
		event :fail do
			transactions from: :running, to: :errored
		end 
	end 
	
	def charge_card
	  begin
	    charge = Stripe::Charge.create (
		  amount: self.amount,
		  currency: "eur",
		  card: self.stripe_token,
		  description: "vendita di un contenuto"
		  )
		self.update(stripe_id: charge.id)
		self.complete!
		
	  rescue stripe::StripeError => e
	    self.update_attributes(error: e.message)
		self.fail!
	end
	
	private
		def generate_guid
		self.guide = SecureRandom.uuid()
	end
end
