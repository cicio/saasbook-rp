# in spec/models/movie_spec.rb
describe Movie do
  it 'should include rating and year in full name' do
    # 'build' creates but doesn't save object; 'create' also saves it
    movie = FactoryGirl.build(:movie, :title => 'Milk', :rating => 'R')
    movie.name_with_rating.should == 'Milk (R)'
  end
end
# More concise: uses Alternative RSpec2 'subject' syntax', and mixes in
# FactoryGirl methods in spec_helper.rb (see FactoryGirl README)
describe Movie do
  subject { build :movie, :title => 'Milk', :rating => 'R' }
  its(:name_with_rating) { should == 'Milk (R)' }
end
