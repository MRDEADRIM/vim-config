
" Abbreviation
abbr _onclick $('btn').click(function(){code});<Esc>

abbr _log console.log('string');<Esc>bb

abbr _ajax $.ajax({<CR> url: "{{ route('URL') }}",<CR> type: "method",<CR> data: {<CR> data1:data1,<CR> data2:data2,<CR> },<CR> success: function(response) {<CR> console.log(response);<CR> },<CR> error: function(xhr, status, error) {<CR> console.error('error');<CR> }<CR> });

abbr _ajaxcsrf $.ajax({<CR> url: "{{ route('URL') }}",<CR> type: "method",<CR> data: {<CR> data1:data1,<CR> data2:data2,<CR> },<CR> headers:{<CR> 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')<CR> }, <CR> success: function(response) {<CR> console.log(response);<CR> },<CR> error: function(xhr, status, error) {<CR> console.error('error');<CR> }<CR> });

abbr _route Route::method('/url', 'Controller@function')->name('string');<Esc>
