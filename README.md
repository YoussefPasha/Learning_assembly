# Learning_assembly

### Please --> Follow Commits step by step


## Defining Data Items

• The general form of declaring variables is:

| Unsigned      | Signed        | Size(in Bytes) |
| ------------- | ------------- |----------------|
| BYTE          | SBYTE         |       1        | 
| WORD          | SWORD         |       2        |
| DWORD         | SDWORD        |       4        |
| QWORD         | QWORD         |       8        |
| TBYTE         | TBYTE         |       10       |
------------------------------------------------------------------------------------

## Little Endian Order

  # Val DWORD = 12345678h

| Offset | Value    |
|--------|----------|
| 100:   | 78h      |
| 101:   | 56h      |
| 102:   | 34h      |
| 103:   | 12h      |
