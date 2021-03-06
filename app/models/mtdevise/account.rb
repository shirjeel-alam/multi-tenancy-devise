module Mtdevise
	class Account < ActiveRecord::Base
		belongs_to :owner, :class_name => "Mtdevise::User"
		has_many :members, :class_name => "Mtdevise::Member"
		has_many :users, :through => :members

		resourcify :mtdevise_roles, role_cname: 'Mtdevise::Role'
		accepts_nested_attributes_for :owner

		validates :subdomain,
			presence: true,
			uniqueness: true,
			format: { with: /\A[\w\-]+\Z/i, message: 'is not allowed. Please choose another subdomain.'},
			exclusion: { in: %w(admin), message: 'is not allowed. Please choose another subdomain.'}

		validates :name,
			presence: true,
			uniqueness: {scope: :owner_id}

		before_validation do
			self.subdomain = subdomain.to_s.downcase
		end

		def self.create_with_owner(params={})
			account = new(params)
			if account.save
				account.users << account.owner
				account.owner.confirm
			end
			account
		end

	end
end