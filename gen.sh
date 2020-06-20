for file in test_cases/*.cl
do
    echo "dealing file $file"
    ./lexer $file |./parser > "${file}.parsed"
    ./lexer $file |./parser | refsemant > "${file}.correct"
    #reflexer $file | refparser > "${file}.parsed"
    #reflexer $file | refparser | refsemant > "${file}.correct"
done
