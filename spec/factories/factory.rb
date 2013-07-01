FactoryGirl.define  do
	factory :insight do
		sequence(:name) {|n| "Roger #{n}" }
	end
end