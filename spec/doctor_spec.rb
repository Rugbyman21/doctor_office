require("spec_helper")

describe(Doctor) do
  describe(".all") do
    it("starts off with no lists") do
      expect(Doctor.all()).to(eq([]))
    end
  end

  describe("#name") do
    it("tells the user the name of the doctor") do
      doctor = Doctor.new({:name => "Phill", :specialty => "Orthopedic", :id => nil })
      expect(doctor.name()).to(eq("Phill"))
    end
  end

  describe("#specialty") do
    it("tells the user the specialty of the doctor") do
      doctor = Doctor.new({:name => "Phill", :specialty => "Orthopedic", :id => nil })
      expect(doctor.specialty()).to(eq("Orthopedic"))
    end
  end

  describe("#id") do
    it("sets its ID when you save it") do
      doctor = Doctor.new({:name => "Phill", :specialty => "Orthopedic", :id => nil})
      doctor.save()
      expect(doctor.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe("#save") do
    it("lets you save lists to the database") do
      doctor = Doctor.new({:name => "Phill", :specialty => "Orthopedic", :id => nil})
      doctor.save()
      expect(Doctor.all()).to(eq([doctor]))
    end
  end

  describe("#==") do
    it("is the same list if it has the same name") do
      doctor1 = Doctor.new({:name => "Phill", :specialty => "Orthopedic", :id => nil})
      doctor2 = Doctor.new({:name => "Phill", :specialty => "Orthopedic", :id => nil})
      expect(doctor1).to(eq(doctor2))
    end
  end

end
