class AllOutputsController < ApplicationController
  def index
    @lessonsKisoOne = Lesson.where(k_or_o: 1).where(lesson_no: 1)
    @lessonsKisoTwo = Lesson.where(k_or_o: 1).where(lesson_no: 2)
  end
end

