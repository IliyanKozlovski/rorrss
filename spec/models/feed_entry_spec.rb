require 'rails_helper'

RSpec.describe FeedEntry, type: :model do
    let(:entry) { FeedEntry.new }

    context "attributes" do
      ["title", "url", "published", "content", "author"].each do |attribute|
        it "has attribute #{attribute}" do
          expect(entry).to have_attribute(attribute)
        end
      end
    end
end
