require 'test_helper'

class FreelanceProposalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freelance_proposal = freelance_proposals(:one)
  end

  test "should get index" do
    get freelance_proposals_url, as: :json
    assert_response :success
  end

  test "should create freelance_proposal" do
    assert_difference('FreelanceProposal.count') do
      post freelance_proposals_url, params: { freelance_proposal: { client: @freelance_proposal.client, client_email: @freelance_proposal.client_email, estimated_hours: @freelance_proposal.estimated_hours, hourly_rate: @freelance_proposal.hourly_rate, portfolio_url: @freelance_proposal.portfolio_url, tools: @freelance_proposal.tools, weeks_to_complete: @freelance_proposal.weeks_to_complete } }, as: :json
    end

    assert_response 201
  end

  test "should show freelance_proposal" do
    get freelance_proposal_url(@freelance_proposal), as: :json
    assert_response :success
  end

  test "should update freelance_proposal" do
    patch freelance_proposal_url(@freelance_proposal), params: { freelance_proposal: { client: @freelance_proposal.client, client_email: @freelance_proposal.client_email, estimated_hours: @freelance_proposal.estimated_hours, hourly_rate: @freelance_proposal.hourly_rate, portfolio_url: @freelance_proposal.portfolio_url, tools: @freelance_proposal.tools, weeks_to_complete: @freelance_proposal.weeks_to_complete } }, as: :json
    assert_response 200
  end

  test "should destroy freelance_proposal" do
    assert_difference('FreelanceProposal.count', -1) do
      delete freelance_proposal_url(@freelance_proposal), as: :json
    end

    assert_response 204
  end
end
