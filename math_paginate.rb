def pag(x, n = 100, a = -2, b = 2)
  raise "Попытка отобразить ссылку на нулевую или отрицательную страницу" if x <= 0
  raise "Попытка отобразить ссылку на страницу, превышающую их диапазон" if x > n
  raise "Левая или правая граница разброса имеет недопустимое значение" if a >= 0 || b <= 0 || -a > n || b > n
  q, alf = [], 0.1  # 0 < alf < 0.5
  raise "Недопустимое значение alfa: должно быть 0 < alfa < 0.5" if 0 >= alf || 0.5 <= alf
  (a..b).each { |i| q << (x + i*((((2.0/Math::PI)*Math.atan(x+i) + 1.0 - alf).abs).floor)*(((-2.0/Math::PI)*Math.atan(x+i-n) + 1.0).floor)) }
  q.uniq.sort
rescue => e
  puts e
end

x = 30
pag(x, 100, -4, 4).each {|b| puts b}