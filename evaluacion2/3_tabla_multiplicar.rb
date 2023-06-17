#un primer ciclo for para iterar el primer factor desde el 0 al 9
for factor_primero in 0..9
  puts "Tabla del #{factor_primero}"
  #otro ciclo for para iterar sobre el segundo factor
  for factor_segundo in 0..9
    puts "#{factor_primero} x #{factor_segundo} = #{factor_primero*factor_segundo}"
  end
end