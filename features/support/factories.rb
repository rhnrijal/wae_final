FactoryBot.define do
  factory :student, class: User do
    email {"alpha@ait.asia"}
    #sequence(:email) {|n| "person#{n}@example.com" }
    password {"password"}
    password_confirmation {"password"}
  end



    factory :user2, class: User do
      email {"alpha11@ait.asia"}
      #sequence(:email) {|n| "person#{n}@example.com" }
      password {"password"}
      password_confirmation {"password"}
    end

      factory :course, class: Course do
      code {"at121"}
        title {"abc"}
      end

  factory :course_off, class: CourseOffering do
    year {2018}
    semester {"abc"}
    @x= FactoryBot.create :course
    course_id {@x}
  end


  factory :register, class: RegistrationCourse do
   # @u = FactoryBot.create :user2
    grade {'A'}
    user_id {@u}
    course_offering_id {1}
  end
end