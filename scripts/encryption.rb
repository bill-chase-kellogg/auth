# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "tacos"
puts secret
encrypted = BCrypt::Password.create(secret)
puts encrypted
# 2. decrypt the encrypted string
secret_to_test = "tacos"
decrypted = BCrypt::Password.new(encrypted)
puts "decrypted ??? #{decrypted}"
# 3. check if decrypted value matches secret
results = BCrypt::Password.new(encrypted) == secret_to_test
puts results
