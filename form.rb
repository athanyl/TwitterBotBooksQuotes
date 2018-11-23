#def affichage_tableau
##	tab = []
##	File.open("la_horde.txt").each do |line| 
#		tab << line
#	end
#	puts tab
#end	

def suppression_lignes_vides
	tab = []
	File.open("ton_ebook_transformé_en_txt.txt").each do |line| #Modifie la chaine de caractère en mettant le nom de ton fichier entre les ""
		tab << line
		tab.length.times do |i|
			if tab[i] == "\n"
				tab.delete_at(i)
				puts "la ligne #{i} a été supprimée"
			end
		end
		f = File.new("mynewfile.txt", "w")
		f.puts(tab)
		f.close
	end
end

def ajout_saut_ligne
	tab = []
	File.open("mynewfile.txt").each do |line| 
		tab << line
		tab.length.times do |i|
			puts tab[i]
			tab[i] = tab[i].gsub(". ", ".\n")
			tab[i] = tab[i].gsub(" ! ", " !\n")
			tab[i] = tab[i].gsub(" ? ", " ?\n")
		end
	end
	f = File.new("myfinalfile.txt", "w")
	f.puts(tab)
	f.close
end	

suppression_lignes_vides
ajout_saut_ligne