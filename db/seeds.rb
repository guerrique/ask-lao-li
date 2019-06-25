# puts "destroying data"
Trait.destroy_all
Tirage.destroy_all
Trigramme.destroy_all
Hexagramme.destroy_all
User.destroy_all

puts "creating trigrammes"
["trigbrume", "trigciel", "trigeau", "trigfeu", "trigmarais",
  "trigmontagne", "trigterre", "trigtonnerre"].each do |item|
    trig_data = YAML.load_file("db/data/#{item}.yml")

trig = Trigramme.new(
  nom: trig_data["nom"])
trig.save!
end

puts "creating hexagrammes"
["1", "2", "3", "4", "5", "6", "7",
  "8", "9", "10", "11", "12", "13",
  "14", "15", "16", "17", "18", "19",
  "20", "21", "22", "23", "24",
  "25", "26", "27", "28", "29", "30",
"31", "32", "33", "34", "35", "36",
"37", "38", "39", "40", "41", "42", "43",
"44", "45", "46", "47", "48", "49", "50",
"51", "52", "53", "54", "55", "56", "57",
"58", "59", "60", "61", "62", "63", "64"].each do |item|
  hex_data = YAML.load_file("db/data/hex#{item}.yml")

hex = Hexagramme.new(
  nom: hex_data["nom"],
  description: hex_data["description"],
  jugement: hex_data["jugement"],
  jugement_description: hex_data["jugement_description"],
  trait1: hex_data["trait1"],
  trait1_description: hex_data["trait1_description"],
  trait2: hex_data["trait2"],
  trait2_description: hex_data["trait2_description"],
  trait3: hex_data["trait3"],
  trait3_description: hex_data["trait3_description"],
  trait4: hex_data["trait4"],
  trait4_description: hex_data["trait4_description"],
  trait5: hex_data["trait5"],
  trait5_description: hex_data["trait5_description"],
  trait6: hex_data["trait6"],
  trait6_description: hex_data["trait6_description"],
  grande_image: hex_data["grande_image"],
  dixieme_aile: hex_data["dixieme_aile"],
  nucleaire: hex_data["nucleaire"],
  oppose: hex_data["oppose"],
  renverse: hex_data["renverse"],
  image: hex_data["image"],
  trigramme_haut: hex_data["trigramme_haut"],
  trigramme_bas: hex_data["trigramme_bas"],
  numero: hex_data["numero"]
  )
hex.save!
end

puts "creating admin using User model"
guerrique = User.new(email: "guerrique@bussiere.fr", password: "guerrique", admin: true)
guerrique.save!
