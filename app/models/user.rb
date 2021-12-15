class User < ApplicationRecord
    validates :username, :mail, :password, presence: true
    include ActiveModel::Conversion
    def self.findUser(id)
        if User.exists?(id: id) 
            return User.find_by(id: id).to_json
        else
            return 'Korisnik nije pronadjen'
        end
    end

    def self.deleteUser(id)
        if User.exists? id: id
            if User.find_by(id: id).destroy
                return 'Korisnik je izbrisan'
            else
                return 'Korisnik nije izbrisan'
            end
        else
            return 'Korisnik ne postoji' 
        end     
    end

    def self.createUser(params)
        if User.new(params).save
            return 'Korisnik kreiran'
        else
            return 'Nesto nije uredu sa vasim unosima, pokusajte ponovo'
        end     
    end
end
