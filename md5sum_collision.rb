# given the md5 for the word "password", see if there are any
# strings up to a certain length that have the same md5sum as the one for "password"
# can be used later for seeing if login hashes are salted or not. 
# different password/same hash/logged in = bonk
require 'digest/md5'

#('a'..'z').to_a.repeated_combination(2).map(&:join)
# ('aaa'..'~~~').each do |string|
# #('A'a'..'z').to_a.repeated_combination(3).map.each do |string|
# 	puts string
# end
# ('aaa'..'zzz', 'AAA'..'ZZZ').each do |s|
# 	puts s
# end
# abort("debug stop")
chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 
	'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 
	'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', 
	'1', '2', '3', '4', '5', '6', '7', '8', '9', '_', '-', '!', '@', '#', '$', '%', '^', '&', 
	' ', '*', '(', ')', '/']
password = ''

for num_characters in 1..3 # 8..16
	puts "num_characters: #{num_characters}"
	$stdout.flush
	for c1 in 0..chars.length
		puts "c1 is #{chars[c1]}"
		password += chars[c1]
		for c2 in 0..chars.length
			next if num_characters < 2

			for c3 in 0..chars.length
				next if num_characters < 3

				for c4 in 0..chars.length
					next if num_characters < 4

					for c5 in 0..chars.length
						next if num_characters < 5

						for c6 in 0..chars.length
							next if num_characters < 6

							for c7 in 0..chars.length
								next if num_characters < 7

								for c8 in 0..chars.length
									next if num_characters < 8

									for c9 in 0..chars.length
										next if num_characters < 9

										for c10 in 0..chars.length
											next if num_characters < 10

											for c11 in 0..chars.length
												next if num_characters < 11

												for c12 in 0..chars.length
													next if num_characters < 12

													for c13 in 0..chars.length
														next if num_characters < 13

														for c14 in 0..chars.length
															next if num_characters < 14

															for c15 in 0..chars.length
																next if num_characters < 15

																for c16 in 0..chars.length
																	next if num_characters < 16
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

abort("debug stop")



md5sum = ""
password = ""
chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-!@#$%^&*()/'

while md5sum != "5F4dcc3b5aa765d61d8327deb882cf99" and password != "password"
	password = ""
	# most passwords are between 8 and 20 characters so 
	# make random strings of alphanumeric characters 
	rand(8..20).times { password << chars[rand(chars.size)] }
	md5sum = Digest::MD5.hexdigest(password)

	# debug
	# md5sum = "5F4dcc3b5aa765d61d8327deb882cf99"
	
	# puts md5sum
	# break
end

puts password
