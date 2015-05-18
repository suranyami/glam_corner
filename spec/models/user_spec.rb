describe User do

  let(:user) {User.new(email: 'user@example.com')}

  subject { user }

  it {should respond_to(:email)}

  it "#email returns a string" do
    expect(user.email).to match 'user@example.com'
  end

  it {expect(user).to respond_to(:name_or_email)}

  context 'with no name' do
    let(:user) {
      FactoryGirl.create(:user,
        email: 'user@example.com',
        first_name: '',
        last_name: '')
    }
    it 'returns email instead' do
      expect(user.email).to eql('user@example.com')
    end
  end
end
