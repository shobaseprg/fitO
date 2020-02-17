class AllOutputsController < ApplicationController
  def index
    @lessonsKisoOne = Lesson.where(k_or_o: 1).where(lesson_no: 1)
    @lessonsKisoTwo = Lesson.where(k_or_o: 1).where(lesson_no: 2)

    @lessonsOuyouOne = Lesson.where(k_or_o: 2).where(lesson_no: 1)
    @lessonsOuyouTwo = Lesson.where(k_or_o: 2).where(lesson_no: 2)
  end
end

