class HistoricoEscolarScreen < AndroidScreenBase
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'student_card_activity' }
  element(:bug_semester)        { '2014.1' }

  def cr_is_on_page?
    is_on_page? 'CR Geral'
    is_on_page? '7,6'
  end

  def semester_cr_is_on_page?
    is_on_page? '4,25'
  end

  def navigate_at_semesters
    drag_until_element_is_visible(:left, bug_semester, query("* marked:'#{bug_semester}'")[1])
    touch("* marked:'#{bug_semester}'")
  end
end
