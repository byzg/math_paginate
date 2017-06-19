# math_paginate
Mathematical algorithm for constructing page numbers for pagination without conditional constructions

```ruby
p pag(ENV['X'].to_i, 100, -4, 4)
```

```
$ X=43 ruby ~/Загрузки/math_paginate/math_paginate.rb 
[39, 40, 41, 42, 43, 44, 45, 46, 47]
$ X=1 ruby ~/Загрузки/math_paginate/math_paginate.rb 
[1, 2, 3, 4, 5]
$ X=2 ruby ~/Загрузки/math_paginate/math_paginate.rb 
[1, 2, 3, 4, 5, 6]
$ X=98 ruby ~/Загрузки/math_paginate/math_paginate.rb 
[94, 95, 96, 97, 98, 99, 100]
$ X=99 ruby ~/Загрузки/math_paginate/math_paginate.rb 
[95, 96, 97, 98, 99, 100]

```
