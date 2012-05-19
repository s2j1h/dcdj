# encoding: utf-8
module EventsHelper
	
	def day_to_now (date)
		today = Time.now
		distance = ((date.to_time - Time.new(today.year, today.month, today.day))/86400).round
		if distance > 1
			"%d jours" % distance
		elsif distance == 1
			"Demain"
		elsif distance == 0
			"Aujourd'hui"
		else
			"l'événement est passé"
		end
	end
end
