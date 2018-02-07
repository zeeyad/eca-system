class StudentImport
  include ActiveModel::Model
  attr_accessor :file
  attr_accessor :user_id
  #attr_accessor :arr

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
        imported_products.each_with_index do |student, index|
          if student.valid?
            student.save
            #arr << student.studreg
            errors.add :base, "<span color='green'>Row #{index+2}: #{student.student_reg} : Student Added Successfully</span>".html_safe
          end

          student.errors.full_messages.each do |message|
            errors.add :base, "<strong>ERROR - Row #{index+2}: #{student.student_reg} : #{message} - ERROR</strong>".html_safe
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
      student = Student.find_by(id: row["id"]) || Student.new
      student.user_id = user_id
      begin 
        student.attributes = row.to_hash
      rescue
        return false
      end
      student.attributes = row.to_hash
      student
    end    
  end

end
