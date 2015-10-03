namespace :db do
  	task populate: :environment do
  	require 'ffaker'

		5.times do
			 User.create(
				name: FFaker::Name.name,
				email: fname + '.' + lname + dell,
				position_id: tl_rand_number.sample
			)
		end
		
		
		(1..12).each do |n|
			fname = FFaker::Name.first_name
			lname = FFaker::Name.last_name
			position_id = n
			Employee.create(
				password: 'password',
				fname: fname,
				lname: lname,
				email: fname + '.' + lname + dell,
				position_id: position_id
			)
		end
		
		(1..218).each do |n|
			employee_id = n
			Evaluation.create(
				gScore: score_num.sample,
				qScore: score_num.sample,
				iScore: score_num.sample,
				rScore: score_num.sample,
				aScore: score_num.sample,
				mScore: score_num.sample,
				isScore: score_num.sample,
				owScore: score_num.sample,
				dScore: score_num.sample,
				oScore: score_num.sample,
				kScore: score_num.sample,
				pScore: score_num.sample,
				lScore: score_num.sample,
				employee_id: employee_id,
				rater_id: eval_number.sample
			)
		end
		
		(219..224).each do |n|
			employee_id = n
			Evaluation.create(
				gScore: 5,
				qScore: 5,
				iScore: 5,
				rScore: 5,
				aScore: 5,
				mScore: 5,
				isScore: 5,
				owScore: 5,
				dScore: 5,
				oScore: 5,
				kScore: 5,
				pScore: 5,
				lScore: 5,
				employee_id: employee_id,
				rater_id: 219
			)
		end	
		
		(225..231).each do |n|
			employee_id = n
			Evaluation.create(
				gScore: score_numTwo.sample,
				qScore: score_numTwo.sample,
				iScore: score_numTwo.sample,
				rScore: score_numTwo.sample,
				aScore: score_numTwo.sample,
				mScore: score_numTwo.sample,
				isScore: score_numTwo.sample,
				owScore: score_numTwo.sample,
				dScore: score_numTwo.sample,
				oScore: score_numTwo.sample,
				kScore: score_numTwo.sample,
				pScore: score_numTwo.sample,
				lScore: score_numTwo.sample,
				employee_id: employee_id,
				rater_id: eval_number.sample
			)
		end
		
		50.times do
			(1..50).each do |n|
				employee_id = n
				EmployeeEducation.create(
					employee_id: employee_id,
					education_id: 1
				)
			end
		end
		
		132.times do
			(51..182).each do |n|
				employee_id = n
				EmployeeEducation.create(
					employee_id: employee_id,
					education_id: bach_rand_number.sample
				)
			end
		end
		
		48.times do
			(183..230).each do |n|
				employee_id = n
				EmployeeEducation.create(
					employee_id: employee_id,
					education_id: mast_rand_number.sample
				)
			end
		end
		
		700.times do
			EmployeeSkill.create(
				employee_id: emp_rand_number.sample,
				skill_id: skill_number.sample
			)
		end	
	end
end


def dell
	['@dell.com'].sample
end

def bach_rand_number
	(2..11).to_a.shuffle
end

