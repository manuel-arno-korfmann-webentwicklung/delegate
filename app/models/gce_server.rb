class GceServer < ApplicationRecord
  belongs_to :gce_server_associable, polymorphic: true
end
