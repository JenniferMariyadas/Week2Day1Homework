class StudentCodeclan

  def initialize(student_name, cohort_number, talk, favourite_language)
    @student_name = student_name
    @cohort_number = cohort_number
    @talk = talk
    @favourite_language = favourite_language
  end

  def student_codeclan_name
    return @student_name
  end

  def cohort_number
    return @cohort_number
  end

  def update_name(name)
    @student_name = name
  end

  def update_cohort(number)
    @cohort_number = number
  end

  def talk
    return @talk
  end

  def favourite_language
    return "I love #{@favourite_language}"
  end
end
