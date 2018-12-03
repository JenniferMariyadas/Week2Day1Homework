require('minitest/autorun')
require('minitest/rg')
require_relative('../student_codeclan')

class TestStudentCodeclan < MiniTest::Test

  def setup
    @student_codeclan = StudentCodeclan.new("John","G1","I can talk", "Ruby")
    @student_codeclan2 = StudentCodeclan.new("John","G1","Yazozoooo", "Ruby")
  end

  def test_student_codeclan_name
    assert_equal("John", @student_codeclan.student_codeclan_name)
  end

  def test_cohort_number
    assert_equal("G1", @student_codeclan.cohort_number)
  end

  def test_update_name
    @student_codeclan.update_name("James")
    assert_equal("James", @student_codeclan.student_codeclan_name)
  end

  def test_update_cohort
    @student_codeclan.update_cohort("G2")
    assert_equal("G2", @student_codeclan.cohort_number)
  end

  def test_talk
    assert_equal("I can talk", @student_codeclan.talk)
  end

  def test_talk_student2
    assert_equal("Yazozoooo", @student_codeclan2.talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby", @student_codeclan.favourite_language)
  end

end
