require "rails_helper"

RSpec.describe "subscriptions" do
  it "creates a subscription" do
    customer = Customer.create!(first_name: "Tia", last_name: "Sipper", email: "example@email.com", address: "221 B Baker St.")
    tea = Tea.create!(title: "SleepyTime", description: "A delightful blend of chamomile and other herbs to put you to bed", temperature: 180, brew_time: 300)
    count = Subscription.all.count
    post "/api/v1/subscriptions", params: {
      customer_id: customer.id,
      tea_id: tea.id,
      title: "SleepyTime",
      price: 399,
      status: "subscribed",
      frequency: 1
    }

    new_count = Subscription.all.count
    count += 1
    expect(response).to be_successful
    expect(new_count).to eq(count)
  end

  it "cancels a subscription" do
    customer = Customer.create!(first_name: "Tia", last_name: "Sipper", email: "example@email.com", address: "221 B Baker St.")
    tea = Tea.create!(title: "SleepyTime", description: "A delightful blend of chamomile and other herbs to put you to bed", temperature: 180, brew_time: 300)
    subscription = Subscription.create!(customer_id: customer.id, tea_id: tea.id, title: "SleepyTime", price: 399, status: "subscribed", frequency: 1)

    patch "/api/v1/subscriptions/#{subscription.id}"
    updated_subscription = Subscription.find(subscription.id)

    expect(response).to be_successful
    expect(updated_subscription.status).to eq("unsubscribed")
  end
end
