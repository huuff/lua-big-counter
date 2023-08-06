
function inc_big_counter(counter) 
  counter_as_table={}
  counter:gsub(".", function(c) table.insert(counter_as_table, c) end)
  print(counter_as_table)
end

inc_big_counter("123456789")
