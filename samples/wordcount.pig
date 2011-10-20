lines = LOAD '/samples/book.txt' USING TextLoader();
words = FOREACH lines GENERATE FLATTEN(TOKENIZE($0));
grouped = GROUP words BY $0;
counts = FOREACH grouped GENERATE group, COUNT(words);
DUMP counts;
