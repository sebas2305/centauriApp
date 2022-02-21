require "test_helper"

class QuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_url
    assert_response :success
  end

  test "should create quote" do
    assert_difference("Quote.count") do
      post quotes_url, params: { quote: { address: @quote.address, billvalue: @quote.billvalue, cellphone: @quote.cellphone, company: @quote.company, construction: @quote.construction, email: @quote.email, equipment: @quote.equipment, location: @quote.location, name: @quote.name, roof: @quote.roof } }
    end

    assert_redirected_to quote_url(Quote.last)
  end

  test "should show quote" do
    get quote_url(@quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_url(@quote)
    assert_response :success
  end

  test "should update quote" do
    patch quote_url(@quote), params: { quote: { address: @quote.address, billvalue: @quote.billvalue, cellphone: @quote.cellphone, company: @quote.company, construction: @quote.construction, email: @quote.email, equipment: @quote.equipment, location: @quote.location, name: @quote.name, roof: @quote.roof } }
    assert_redirected_to quote_url(@quote)
  end

  test "should destroy quote" do
    assert_difference("Quote.count", -1) do
      delete quote_url(@quote)
    end

    assert_redirected_to quotes_url
  end
end
