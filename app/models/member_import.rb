class MemberImport
  include ActiveModel::Model
  attr_accessor :file
  attr_accessor :club_id

  def initialize(attributes = {})
    attributes.each { |student_reg, value| send("#{student_reg}=", value) }
  end

  def persisted?
    false
  end

  def save
    if imported_products == false
      return false
    end
    begin 
        imported_products.map(&:valid?).all?
          imported_products.each(&:save!)
          true
      rescue
        imported_products.each_with_index do |member, index|
          if member.valid?
            member.save
            #arr << student.student_reg
            errors.add :base, "<span>Row #{index+2}: #{member.student_reg} : Student Added Successfully</span>".html_safe
          end

          member.errors.full_messages.each do |message|
            errors.add :base, "<strong>ERROR - Row #{index+2}: #{member.student_reg} : Student Registration not found - ERROR</strong>".html_safe
          end
        end
        false
    end
  end

  def imported_products
    @imported_products ||= load_imported_products
  end

  def load_imported_products
    spreadsheet = Roo::Spreadsheet.open(file.path)

    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).map do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      member = Member.find_by(student_reg: row["student_reg"], club_id: club_id) || Member.new
      
      begin 
        @getstudent = Student.find_by(student_reg: row["student_reg"].upcase)
        member.student_id = @getstudent.id
      rescue
        member.student_id = nil
      end

      member.club_id = club_id
      begin 
        member.attributes = row.to_hash
      rescue
        return false
      end
      member.attributes = row.to_hash
      member
    end    
  end

end
