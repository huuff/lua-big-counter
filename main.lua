
function inc_big_counter(counter) 
  local counter_as_table = {}
  counter:gsub(".", function(c) table.insert(counter_as_table, c) end)

  local incr_next = #counter_as_table

  print("The size of the table is " .. incr_next)
  --for i, v in pairs(counter_as_table) do
    --print(i, v);
  --end
end

inc_big_counter("123456789")
