task :default => :tdoc

desc "Ejecutamos el test con documentacion"
task :tdoc do
	sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end

desc ""
task :thtml do
	sh "rspec -Ilib spec/ppt_spec.rb --format html > index.html"
end

desc "Ejecutamos el main"
task :bin do
	sh "ruby -Ilib bin/ppt_main.rb"
end
