require("rspec")
require("pg")
require("doctor")
require("patient")
require("spec_helper")

DB = PG.connect({:dbname => "doctor_office_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM doctor *;")
    DB.exec("DELETE FROM patient *;")
  end
end
