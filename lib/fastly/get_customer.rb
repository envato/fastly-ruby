class Fastly::GetCustomer < Fastly::Request
  request_method :get
  request_path { |r| "/customer/#{r.customer_id}" }

  parameter :customer_id

  def mock
    mock_response(find!(:customers, customer_id))
  end
end