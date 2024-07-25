def bubble_sort(array)
  # Declaro una variable para ejecutar el ciclo
  longitud = array.length
  cambio = false

  # Muestro los elementos antes del cambio
  puts "array actual: "
  array.each do |elemento|
    print "#{elemento}, "
  end
  puts

  begin
    # Uso cambio para romper el ciclo al finalizar el ciclo for
    cambio = false

    for i in 0...(longitud - 1)
      # Comparo los elementos
      if array[i] > array[i + 1]
        # Intercambio de elementos
        # Guardo el elemento actual en esta variable
        intercambio = array[i]
        # Lo cambio con el valor de la posición siguiente
        array[i] = array[i + 1]
        # A la posición siguiente le coloco el valor original en i
        array[i + 1] = intercambio
        cambio = true
      end
    end
  end while cambio

  puts "\narray ordenado por ordenamiento burbuja: "
  array.each do |elemento|
    print "#{elemento}, "
  end
  puts

end
array = [4,3,78,2,0,2]
bubble_sort(array)