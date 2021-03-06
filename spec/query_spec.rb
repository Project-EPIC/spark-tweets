require "spec_helper"

describe Query do

  before :all do
    @epicosm = EpicOSM.new(analysis_window: 'spec/test_config_file.yml')
    @aw = @epicosm.analysis_window
  end

  it "can get the earliest changeset date from the DB" do
    expect Changeset_Query.earliest_changeset_date.class == Date
  end

  it "can get the latest changeset from the DB" do
    expect  Changeset_Query.latest_changeset_date.class == Date
  end

  it "can make a node query" do
    expect @aw.nodes_x_all.first[:objects].count > 0
  end

  it "can make a complex query" do
    puts @aw.experienced_contributors.count
  end


end
