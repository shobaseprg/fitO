class AllOutputsController < ApplicationController
  def index
    @lessonskone = Lesson.where(k_or_o: 1).where(lesson_no: 1)
  end
end

