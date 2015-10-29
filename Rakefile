task :default => :tu

desc "Pruebas unitarias de la clase Fraccion"
task :tu do
  sh "ruby -I. test/tc_fraccion.rb"
end

desc "Ejecutar solo las pruebas de simplificar"
task :simplificar do
  sh "ruby -I. test/tc_fraccion.rb -n /simplificar/"
end

desc "Ejecutar solo las pruebas de operaciones"
task :operaciones do
  sh "ruby -I. test/tc_fraccion.rb -n /operaciones/"
end
