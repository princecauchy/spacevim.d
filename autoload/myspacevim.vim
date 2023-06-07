func! myspacevim#after() abort
  set wrap
  set relativenumber

  let g:neoformat_json_jsonpp = { 'exe': "json_pp", 'args': ['-json_opt', 'utf8,pretty'], 'stdin': 1 }
  let g:neoformat_enabled_json = ['jsonpp']
  set foldmethod=indent
  set nofoldenable
  
  "see https://github.com/darold/pgFormatter
   let g:neoformat_sql_pgformat = { 'exe': 'pg_format', 'args': ['-B'], 'stdin': 1 }
   let g:neoformat_enabled_sql = ['pgformat']
  
   let g:smartim_default = 'com.apple.keylayout.ABC'
  " let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.dylib'
  " let g:XkbSwitchEnabled     = 1
  " let g:XkbSwitchIMappings   = ['ABC']
  " let g:XkbSwitchIMappingsTr = {'ABC': {'<': '', '>': ''}}
  

  
endf


func! myspacevim#before() abort
  call SpaceVim#custom#SPCGroupName(['k'], '自定义映射')
  call SpaceVim#custom#SPC('nnoremap', ['k', 'j'], 'Neoformat! json jsonpp', 'json格式化', 1)
  call SpaceVim#custom#SPC('nnoremap', ['k', 's'], 'Neoformat! sql pgformat', 'sql格式化', 1)
endf

