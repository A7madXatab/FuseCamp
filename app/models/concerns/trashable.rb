module Trashable
  extend ActiveSupport::Concern

  included do
    default_scope do
      where deleted_at: nil
    end

    scope :trashed, -> { unscope(where: :deleted_at)}
  end
end
