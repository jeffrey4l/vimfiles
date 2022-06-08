AddTabularPipeline! multiple_spaces / \{2,}/ map(a:lines, "substitute(v:val, ' \{2,}', '  ', 'g')")  | tabular#TabularizeStrings(a:lines, '  ', 'l0')

AddTabularPipeline! spaces / \{1,}/ map(a:lines, "substitute(v:val, ' \{1,}', '  ', 'g')")  | tabular#TabularizeStrings(a:lines, '  ', 'l0')

AddTabularPattern! first_comma /^[^,]*\zs,/r0c0l0
