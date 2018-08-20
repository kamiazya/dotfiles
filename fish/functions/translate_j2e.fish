function translate_j2e
    set arg (pbpaste)
    
    set result (trans -b {ja=en} $arg)

    echo $result | pbcopy
    echo "\n$arg\n$result"
end
