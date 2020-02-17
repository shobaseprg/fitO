class AllOutputsController < ApplicationController
  def index
    lessonsBases_of_1 = Lesson.where(k_or_o: 1).where(lesson_no:1)
    lessonsBases_of_2 = Lesson.where(k_or_o: 1).where(lesson_no:2)
    # 基礎レッスンをそれぞれlessonごとに格納

    @lessonsBases = [
                    lessonsBases_of_1,
                    lessonsBases_of_2
                    ]
    # 基礎の各レッスンを、@lessonsBasesに配列で格納


    lessonsDevs_of_1 = Lesson.where(k_or_o: 2).where(lesson_no:1)
    lessonsDevs_of_2 = Lesson.where(k_or_o: 2).where(lesson_no:2)
                    
                    @lessonsDevs = [
                                    lessonsDevs_of_1,
                                    lessonsDevs_of_2
                                    ]
  end
end
