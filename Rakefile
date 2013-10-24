task :default => :spec

desc "Ejecutar las espectativas de la clase Fraction"
task :spec do
  sh "rspec -I. spec/fraction_spec.rb"
end

desc "Ejecutar tests con documentacion"
task :doc do
  sh "rspec -I spec/fraction_spec.rb --format documentation"
end

desc "Ejecucion del test en formato html"
task :thtml do
  sh "rspec spec/fraction_spec.rb -- format html > resul.html"
end
