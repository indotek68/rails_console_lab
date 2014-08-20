1. me = Students.new
		me.first_name = "Angga"
		me.last_name = Putra
		me.age = 30


[#<Students id: 1, first_name: "Angga", last_name: "Putra", age: 30, created_at: "2014-08-19 23:11:45", updated_at: "2014-08-19 23:11:45

2. me.save

3. me = Students.find(1)
		me.first_name = "Taco"
		me.save

4.Students.where("first_name" => "Taco")
	me.destroy

5. validates_uniqueness_of :last_name

6. validates_length_of :last_name, :minimum => 4, :maximum => 4
	validates_length_of :first_name, :minimum => 4, :maximum => 4

7. validates_presence_of :last_name
		validates_presence_of :first_name

8. validates :first_name, 
						:presence => true, 
	          :length => {:minimum => 4}

	validates :last_name, 
						:presence => true, 
	          :length => {:minimum => 4},
	          :uniqueness => true

9. Doe = Students.create(:first_name => "John", :last_name => "Doe",:age => 33)

10. Doe.errors
		#<ActiveModel::Errors:0x007fb2d24b1c20 @base=#<Students id: nil, first_name: "John", last_name: "Doe", age: 33, created_at: nil, updated_at: nil>, @messages={:last_name=>["is too short (minimum is 4 characters)"]}>

11. Doe.errors
=> 1

12. Doe.update_attributes(:first_name => "Johnathan", :last_name => "Doesmith")

13. Doe.errors.clear

14. Doe.save

15. Students.all
		[#<Students id: 2, first_name: "Angga", last_name: "Angga", age: 30, created_at: "2014-08-19 23:32:51", updated_at: "2014-08-19 23:32:51">, #<Students id: 3, first_name: "Tr", last_name: "Jo", age: nil, created_at: "2014-08-19 23:38:00", updated_at: "2014-08-19 23:38:00">, #<Students id: 4, first_name: "John", last_name: "Smith", age: 30, created_at: "2014-08-19 23:59:10", updated_at: "2014-08-19 23:59:10">, #<Students id: 5, first_name: "Johnathan", last_name: "Doesmith", age: 33, created_at: "2014-08-20 00:20:57", updated_at: "2014-08-20 00:20:57">]>

16. Students.find_by_id(128)
  Students Load (0.7ms)  SELECT  "students".* FROM "students"  WHERE "students"."id" = 128 LIMIT 1
=> nil

17. Students.first
  Students Load (1.6ms)  SELECT  "students".* FROM "students"   ORDER BY "students"."id" ASC LIMIT 1
=> #<Students id: 2, first_name: "Angga", last_name: "Angga", age: 30, created_at: "2014-08-19 23:32:51", updated_at: "2014-08-19 23:32:51">


18. Students.last
  Students Load (1.2ms)  SELECT  "students".* FROM "students"   ORDER BY "students"."id" DESC LIMIT 1
=> #<Students id: 5, first_name: "Johnathan", last_name: "Doesmith", age: 33, created_at: "2014-08-20 00:20:57", updated_at: "2014-08-20 00:20:57">

19. Students.find_by_last_name("Doesmith")
  Students Load (0.8ms)  SELECT  "students".* FROM "students"  WHERE "students"."last_name" = 'Doesmith' LIMIT 1
=> #<Students id: 5, first_name: "Johnathan", last_name: "Doesmith", age: 33, created_at: "2014-08-20 00:20:57", updated_at: "2014-08-20 00:20:57">

20. Students.offset(2).limit(5).order(:last_name)
		SELECT  "students".* FROM "students"   ORDER BY "students"."last_name" ASC LIMIT 5 OFFSET 2
=> #<ActiveRecord::Relation [#<Students id: 3, first_name: "Tr", last_name: "Jo", age: nil, created_at: "2014-08-19 23:38:00", updated_at: "2014-08-19 23:38:00">, #<Students id: 6, first_name: "John", last_name: "Shfde", age: 33, created_at: "2014-08-20 00:33:02", updated_at: "2014-08-20 00:33:02">, #<Students id: 4, first_name: "John", last_name: "Smith", age: 30, created_at: "2014-08-19 23:59:10", updated_at: "2014-08-19 23:59:10">, #<Students id: 8, first_name: "John", last_name: "fdfsdfA", age: 33, created_at: "2014-08-20 00:33:55", updated_at: "2014-08-20 00:33:55">, #<Students id: 7, first_name: "John", last_name: "fsdafsdf", age: 33, created_at: "2014-08-20 00:33:23", updated_at: "2014-08-20 00:33:23">]>

21. Students.where(:last_name => "Doesmith").first.destroy

Bonus:

1.

2.




