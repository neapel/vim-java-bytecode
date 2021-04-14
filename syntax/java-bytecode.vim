" Vim syntax file
" Language: java bytecode
" Maintainer: Pascal Germroth <pascal@ensieve.org>
" URL: https://github.com/neapel/java-bytecode.vim/
" Originally based on
" Claudio Fleiner <claudio@fleiner.com>
" http://www.fleiner.com/vim/syntax/bytecode.vim
" Last change: 2001 Apr 26
"
" To highlight javap's output.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" from http://en.wikipedia.org/wiki/Java_bytecode_instruction_listings

" no stack op
syn keyword bcInstructionNop nop
"[No change]	perform no operation
syn keyword bcInstructionNop iinc
"[No change]	increment local variable #index by signed byte const

" push to stash
syn keyword bcInstructionPush aconst_null
"→ null	push a null reference onto the stack
syn keyword bcInstructionPush iconst_m1
"→ -1	load the int value -1 onto the stack
syn keyword bcInstructionPush iconst_0
"→ 0	load the int value 0 onto the stack
syn keyword bcInstructionPush iconst_1
"→ 1	load the int value 1 onto the stack
syn keyword bcInstructionPush iconst_2
"→ 2	load the int value 2 onto the stack
syn keyword bcInstructionPush iconst_3
"→ 3	load the int value 3 onto the stack
syn keyword bcInstructionPush iconst_4
"→ 4	load the int value 4 onto the stack
syn keyword bcInstructionPush iconst_5
"→ 5	load the int value 5 onto the stack
syn keyword bcInstructionPush lconst_0
"→ 0L	push the long 0 onto the stack
syn keyword bcInstructionPush lconst_1
"→ 1L	push the long 1 onto the stack
syn keyword bcInstructionPush fconst_0
"→ 0.0f	push 0.0f on the stack
syn keyword bcInstructionPush fconst_1
"→ 1.0f	push 1.0f on the stack
syn keyword bcInstructionPush fconst_2
"→ 2.0f	push 2.0f on the stack
syn keyword bcInstructionPush dconst_0
"→ 0.0	push the constant 0.0 onto the stack
syn keyword bcInstructionPush dconst_1
"→ 1.0	push the constant 1.0 onto the stack
syn keyword bcInstructionPush iload_0
"→ value	load an int value from local variable 0
syn keyword bcInstructionPush iload_1
"→ value	load an int value from local variable 1
syn keyword bcInstructionPush iload_2
"→ value	load an int value from local variable 2
syn keyword bcInstructionPush iload_3
"→ value	load an int value from local variable 3
syn keyword bcInstructionPush lload_0
"→ value	load a long value from a local variable 0
syn keyword bcInstructionPush lload_1
"→ value	load a long value from a local variable 1
syn keyword bcInstructionPush lload_2
"→ value	load a long value from a local variable 2
syn keyword bcInstructionPush lload_3
"→ value	load a long value from a local variable 3
syn keyword bcInstructionPush fload_0
"→ value	load a float value from local variable 0
syn keyword bcInstructionPush fload_1
"→ value	load a float value from local variable 1
syn keyword bcInstructionPush fload_2
"→ value	load a float value from local variable 2
syn keyword bcInstructionPush fload_3
"→ value	load a float value from local variable 3
syn keyword bcInstructionPush dload_0
"→ value	load a double from local variable 0
syn keyword bcInstructionPush dload_1
"→ value	load a double from local variable 1
syn keyword bcInstructionPush dload_2
"→ value	load a double from local variable 2
syn keyword bcInstructionPush dload_3
"→ value	load a double from local variable 3
syn keyword bcInstructionPush aload_0
"→ objectref	load a reference onto the stack from local variable 0
syn keyword bcInstructionPush aload_1
"→ objectref	load a reference onto the stack from local variable 1
syn keyword bcInstructionPush aload_2
"→ objectref	load a reference onto the stack from local variable 2
syn keyword bcInstructionPush aload_3
"→ objectref	load a reference onto the stack from local variable 3
syn keyword bcInstructionPush bipush
"→ value	push a byte onto the stack as an integer value
syn keyword bcInstructionPush sipush
"→ value	push a short onto the stack
syn keyword bcInstructionPush ldc
"→ value	push a constant #index from a constant pool (String, int or float) onto the stack
syn keyword bcInstructionPush ldc_w
"→ value	push a constant #index from a constant pool (String, int or float) onto the stack (wide index is constructed as indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionPush ldc2_w
"→ value	push a constant #index from a constant pool (double or long) onto the stack (wide index is constructed as indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionPush iload
"→ value	load an int value from a local variable #index
syn keyword bcInstructionPush lload
"→ value	load a long value from a local variable #index
syn keyword bcInstructionPush fload
"→ value	load a float value from a local variable #index
syn keyword bcInstructionPush dload
"→ value	load a double value from a local variable #index
syn keyword bcInstructionPush aload
"→ objectref	load a reference onto the stack from a local variable #index

" pop stack
syn keyword bcInstructionPop istore
"value →	store int value into variable #index
syn keyword bcInstructionPop lstore
"value →	store a long value in a local variable #index
syn keyword bcInstructionPop fstore
"value →	store a float value into a local variable #index
syn keyword bcInstructionPop dstore
"value →	store a double value into a local variable #index
syn keyword bcInstructionPop astore
"objectref →	store a reference into a local variable #index
syn keyword bcInstructionPop istore_0
"value →	store int value into variable 0
syn keyword bcInstructionPop istore_1
"value →	store int value into variable 1
syn keyword bcInstructionPop istore_2
"value →	store int value into variable 2
syn keyword bcInstructionPop istore_3
"value →	store int value into variable 3
syn keyword bcInstructionPop lstore_0
"value →	store a long value in a local variable 0
syn keyword bcInstructionPop lstore_1
"value →	store a long value in a local variable 1
syn keyword bcInstructionPop lstore_2
"value →	store a long value in a local variable 2
syn keyword bcInstructionPop lstore_3
"value →	store a long value in a local variable 3
syn keyword bcInstructionPop fstore_0
"value →	store a float value into local variable 0
syn keyword bcInstructionPop fstore_1
"value →	store a float value into local variable 1
syn keyword bcInstructionPop fstore_2
"value →	store a float value into local variable 2
syn keyword bcInstructionPop fstore_3
"value →	store a float value into local variable 3
syn keyword bcInstructionPop dstore_0
"value →	store a double into local variable 0
syn keyword bcInstructionPop dstore_1
"value →	store a double into local variable 1
syn keyword bcInstructionPop dstore_2
"value →	store a double into local variable 2
syn keyword bcInstructionPop dstore_3
"value →	store a double into local variable 3
syn keyword bcInstructionPop astore_0
"objectref →	store a reference into local variable 0
syn keyword bcInstructionPop astore_1
"objectref →	store a reference into local variable 1
syn keyword bcInstructionPop astore_2
"objectref →	store a reference into local variable 2
syn keyword bcInstructionPop astore_3
"objectref →	store a reference into local variable 3
syn keyword bcInstructionPop iastore
"arrayref, index, value →	store an int into an array
syn keyword bcInstructionPop lastore
"arrayref, index, value →	store a long to an array
syn keyword bcInstructionPop fastore
"arrayref, index, value →	store a float in an array
syn keyword bcInstructionPop dastore
"arrayref, index, value →	store a double into an array
syn keyword bcInstructionPop aastore
"arrayref, index, value →	store into a reference in an array
syn keyword bcInstructionPop bastore
"arrayref, index, value →	store a byte or Boolean value into an array
syn keyword bcInstructionPop castore
"arrayref, index, value →	store a char into an array
syn keyword bcInstructionPop sastore
"arrayref, index, value →	store short to array
syn keyword bcInstructionPop pop
"value →	discard the top value on the stack
syn keyword bcInstructionPop pop2
"{value2, value1} →	discard the top two values on the stack (or one value, if it is a double or long)

" modify stack
syn keyword bcInstructionMod iaload
"arrayref, index → value	load an int from an array
syn keyword bcInstructionMod laload
"arrayref, index → value	load a long from an array
syn keyword bcInstructionMod faload
"arrayref, index → value	load a float from an array
syn keyword bcInstructionMod daload
"arrayref, index → value	load a double from an array
syn keyword bcInstructionMod aaload
"arrayref, index → value	load onto the stack a reference from an array
syn keyword bcInstructionMod baload
"arrayref, index → value	load a byte or Boolean value from an array
syn keyword bcInstructionMod caload
"arrayref, index → value	load a char from an array
syn keyword bcInstructionMod saload
"arrayref, index → value	load short from array
syn keyword bcInstructionMod dup
"value → value, value	duplicate the value on top of the stack
syn keyword bcInstructionMod dup_x1
"value2, value1 → value1, value2, value1	insert a copy of the top value into the stack two values from the top. value1 and value2 must not be of the type double or long.
syn keyword bcInstructionMod dup_x2
"value3, value2, value1 → value1, value3, value2, value1	insert a copy of the top value into the stack two (if value2 is double or long it takes up the entry of value3, too) or three values (if value2 is neither double nor long) from the top
syn keyword bcInstructionMod dup2
"{value2, value1} → {value2, value1}, {value2, value1}	duplicate top two stack words (two values, if value1 is not double nor long; a single value, if value1 is double or long)
syn keyword bcInstructionMod dup2_x1
"value3, {value2, value1} → {value2, value1}, value3, {value2, value1}	duplicate two words and insert beneath third word (see explanation above)
syn keyword bcInstructionMod dup2_x2
"{value4, value3}, {value2, value1} → {value2, value1}, {value4, value3}, {value2, value1}	duplicate two words and insert beneath fourth word
syn keyword bcInstructionMod swap
"value2, value1 → value1, value2	swaps two top words on the stack (note that value1 and value2 must not be double or long)
syn keyword bcInstructionMod iadd
"value1, value2 → result	add two ints
syn keyword bcInstructionMod ladd
"value1, value2 → result	add two longs
syn keyword bcInstructionMod fadd
"value1, value2 → result	add two floats
syn keyword bcInstructionMod dadd
"value1, value2 → result	add two doubles
syn keyword bcInstructionMod isub
"value1, value2 → result	int subtract
syn keyword bcInstructionMod lsub
"value1, value2 → result	subtract two longs
syn keyword bcInstructionMod fsub
"value1, value2 → result	subtract two floats
syn keyword bcInstructionMod dsub
"value1, value2 → result	subtract a double from another
syn keyword bcInstructionMod imul
"value1, value2 → result	multiply two integers
syn keyword bcInstructionMod lmul
"value1, value2 → result	multiply two longs
syn keyword bcInstructionMod fmul
"value1, value2 → result	multiply two floats
syn keyword bcInstructionMod dmul
"value1, value2 → result	multiply two doubles
syn keyword bcInstructionMod idiv
"value1, value2 → result	divide two integers
syn keyword bcInstructionMod ldiv
"value1, value2 → result	divide two longs
syn keyword bcInstructionMod fdiv
"value1, value2 → result	divide two floats
syn keyword bcInstructionMod ddiv
"value1, value2 → result	divide two doubles
syn keyword bcInstructionMod irem
"value1, value2 → result	logical int remainder
syn keyword bcInstructionMod lrem
"value1, value2 → result	remainder of division of two longs
syn keyword bcInstructionMod frem
"value1, value2 → result	get the remainder from a division between two floats
syn keyword bcInstructionMod drem
"value1, value2 → result	get the remainder from a division between two doubles
syn keyword bcInstructionMod ineg
"value → result	negate int
syn keyword bcInstructionMod lneg
"value → result	negate a long
syn keyword bcInstructionMod fneg
"value → result	negate a float
syn keyword bcInstructionMod dneg
"value → result	negate a double
syn keyword bcInstructionMod ishl
"value1, value2 → result	int shift left
syn keyword bcInstructionMod lshl
"value1, value2 → result	bitwise shift left of a long value1 by int value2 positions
syn keyword bcInstructionMod ishr
"value1, value2 → result	int arithmetic shift right
syn keyword bcInstructionMod lshr
"value1, value2 → result	bitwise shift right of a long value1 by int value2 positions
syn keyword bcInstructionMod iushr
"value1, value2 → result	int logical shift right
syn keyword bcInstructionMod lushr
"value1, value2 → result	bitwise shift right of a long value1 by int value2 positions, unsigned
syn keyword bcInstructionMod iand
"value1, value2 → result	perform a bitwise and on two integers
syn keyword bcInstructionMod land
"value1, value2 → result	bitwise and of two longs
syn keyword bcInstructionMod ior
"value1, value2 → result	bitwise int or
syn keyword bcInstructionMod lor
"value1, value2 → result	bitwise or of two longs
syn keyword bcInstructionMod ixor
"value1, value2 → result	int xor
syn keyword bcInstructionMod lxor
"value1, value2 → result	bitwise exclusive or of two longs
syn keyword bcInstructionMod i2l
"value → result	convert an int into a long
syn keyword bcInstructionMod i2f
"value → result	convert an int into a float
syn keyword bcInstructionMod i2d
"value → result	convert an int into a double
syn keyword bcInstructionMod l2i
"value → result	convert a long to a int
syn keyword bcInstructionMod l2f
"value → result	convert a long to a float
syn keyword bcInstructionMod l2d
"value → result	convert a long to a double
syn keyword bcInstructionMod f2i
"value → result	convert a float to an int
syn keyword bcInstructionMod f2l
"value → result	convert a float to a long
syn keyword bcInstructionMod f2d
"value → result	convert a float to a double
syn keyword bcInstructionMod d2i
"value → result	convert a double to an int
syn keyword bcInstructionMod d2l
"value → result	convert a double to a long
syn keyword bcInstructionMod d2f
"value → result	convert a double to a float
syn keyword bcInstructionMod i2b
"value → result	convert an int into a byte
syn keyword bcInstructionMod i2c
"value → result	convert an int into a character
syn keyword bcInstructionMod i2s
"value → result	convert an int into a short
syn keyword bcInstructionMod lcmp
"value1, value2 → result	compare two longs values
syn keyword bcInstructionMod fcmpl
"value1, value2 → result	compare two floats
syn keyword bcInstructionMod fcmpg
"value1, value2 → result	compare two floats
syn keyword bcInstructionMod dcmpl
"value1, value2 → result	compare two doubles
syn keyword bcInstructionMod dcmpg
"value1, value2 → result	compare two doubles

" branch
syn keyword bcInstructionBranch ifeq
"value →	if value is 0, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch ifne
"value →	if value is not 0, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch iflt
"value →	if value is less than 0, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch ifge
"value →	if value is greater than or equal to 0, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch ifgt
"value →	if value is greater than 0, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch ifle
"value →	if value is less than or equal to 0, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_icmpeq
"value1, value2 →	if ints are equal, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_icmpne
"value1, value2 →	if ints are not equal, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_icmplt
"value1, value2 →	if value1 is less than value2, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_icmpge
"value1, value2 →	if value1 is greater than or equal to value2, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_icmpgt
"value1, value2 →	if value1 is greater than value2, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_icmple
"value1, value2 →	if value1 is less than or equal to value2, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_acmpeq
"value1, value2 →	if references are equal, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch if_acmpne
"value1, value2 →	if references are not equal, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch goto
"[no change]	goes to another instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch jsr
"→ address	jump to subroutine at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2) and place the return address on the stack
syn keyword bcInstructionBranch ret
"[No change]	continue execution from address taken from a local variable #index (the asymmetry with jsr is intentional)
syn keyword bcInstructionBranch tableswitch
"index →	continue execution from an address in the table at offset index
syn keyword bcInstructionBranch lookupswitch
"key →	a target address is looked up from a table using a key and execution continues from the instruction at that address
syn keyword bcInstructionBranch ireturn
"value → [empty]	return an integer from a method
syn keyword bcInstructionBranch lreturn
"value → [empty]	return a long value
syn keyword bcInstructionBranch freturn
"value → [empty]	return a float
syn keyword bcInstructionBranch dreturn
"value → [empty]	return a double from a method
syn keyword bcInstructionBranch areturn
"objectref → [empty]	return a reference from a method
syn keyword bcInstructionBranch return
"→ [empty]	return void from method
syn keyword bcInstructionBranch ifnull
"value →	if value is null, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch ifnonnull
"value →	if value is not null, branch to instruction at branchoffset (signed short constructed from unsigned bytes branchbyte1 << 8 + branchbyte2)
syn keyword bcInstructionBranch goto_w
"[no change]	goes to another instruction at branchoffset (signed int constructed from unsigned bytes branchbyte1 << 24 + branchbyte2 << 16 + branchbyte3 << 8 + branchbyte4)
syn keyword bcInstructionBranch jsr_w
"→ address	jump to subroutine at branchoffset (signed int constructed from unsigned bytes branchbyte1 << 24 + branchbyte2 << 16 + branchbyte3 << 8 + branchbyte4) and place the return address on the stack


" high level
syn keyword bcInstructionHigh getstatic
"→ value	get a static field value of a class, where the field is identified by field reference in the constant pool index (index1 << 8 + index2)
syn keyword bcInstructionHigh putstatic
"value →	set static field to value in a class, where the field is identified by a field reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh getfield
"objectref → value	get a field value of an object objectref, where the field is identified by field reference in the constant pool index (index1 << 8 + index2)
syn keyword bcInstructionHigh putfield
"objectref, value →	set field to value in an object objectref, where the field is identified by a field reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh invokevirtual
"objectref, [arg1, arg2, ...] →	invoke virtual method on object objectref, where the method is identified by method reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh invokespecial
"objectref, [arg1, arg2, ...] →	invoke instance method on object objectref, where the method is identified by method reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh invokestatic
"[arg1, arg2, ...] →	invoke a static method, where the method is identified by method reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh invokeinterface
"objectref, [arg1, arg2, ...] →	invokes an interface method on object objectref, where the interface method is identified by method reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh invokedynamic
"[arg1, [arg2 ...]] →	invokes a dynamic method identified by method reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh new
"→ objectref	create new object of type identified by class reference in constant pool index (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh newarray
"count → arrayref	create new array with count elements of primitive type identified by atype
syn keyword bcInstructionHigh anewarray
"count → arrayref	create a new array of references of length count and component type identified by the class reference index (indexbyte1 << 8 + indexbyte2) in the constant pool
syn keyword bcInstructionHigh arraylength
"arrayref → length	get the length of an array
syn keyword bcInstructionHigh athrow
"objectref → [empty], objectref	throws an error or exception (notice that the rest of the stack is cleared, leaving only a reference to the Throwable)
syn keyword bcInstructionHigh checkcast
"objectref → objectref	checks whether an objectref is of a certain type, the class reference of which is in the constant pool at index (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh instanceof
"objectref → result	determines if an object objectref is of a given type, identified by class reference index in constant pool (indexbyte1 << 8 + indexbyte2)
syn keyword bcInstructionHigh monitorenter
"objectref →	enter monitor for object ("grab the lock" - start of synchronized() section)
syn keyword bcInstructionHigh monitorexit
"objectref →	exit monitor for object ("release the lock" - end of synchronized() section)
syn keyword bcInstructionHigh wide
"[same as for corresponding instructions]	execute opcode, where opcode is either iload, fload, aload, lload, dload, istore, fstore, astore, lstore, dstore, or ret, but assume the index is 16 bit; or execute iinc, where the index is 16 bits and the constant to increment by is a signed 16 bit short
syn keyword bcInstructionHigh multianewarray
"count1, [count2,...] → arrayref	create a new array of dimensions dimensions with elements of type identified by class reference in constant pool index (indexbyte1 << 8 + indexbyte2); the sizes of each dimension is identified by count1, [count2, etc.]

" modifier keywords
syn keyword bcJavaKeyword transient strictfp serializable synchronized static final volatile protected public private abstract class interface implements enum extends this
syn match bcJavaKeyword /{}/

syn match bcComment "//.*$"
syn match jasminComment "^\s*;.*$"
syn match bcMetaTable /^\s*\[.*$/ contained nextgroup=bcMetaTable skipnl
syn match bcMetaLines /^\s*Line numbers:\s*$/ nextgroup=bcMetaTable skipnl
syn match bcMetaLocals /^\s*Local variable table:\s*$/ nextgroup=bcMetaTable skipnl

" type names
syn keyword bcJavaType boolean char byte short int long float double void
syn match bcQualifiedType /[_$a-zA-Z][_$a-zA-Z0-9]*\(\.[_$a-zA-Z][_$a-zA-Z0-9]*\)\+\(\[\]\)\?/ contained

syn match bcOffset /^\s*[0-9]\+\s\?/
syn match bcConstantID /\[[0-9]\+\]\s*$/

" literals
syn match  bcSpecialChar /\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)/ contained
syn region bcString start=/\v"/ skip=/\v\\./ end=/\v"/ contained contains=bcSpecialChar
syn region bcLiteral start=/</ end=/>/ contains=bcString
"syn region bcLiteral start=/</ end=/>/
"<[^>]*>"

" invokestatic pkg.Class.fun(tp, tp) : returntype
syn match bcInvoke /[_$a-zA-Z][_$a-zA-Z0-9]*\s*(/me=e-1
syn region bcParams start=/(/ end=/)/ contains=bcJavaType,bcQualifiedType
syn match bcType /\s:\s*[_$a-zA-Z][_$a-zA-Z0-9]*/ms=s+2 contains=bcJavaType,bcQualifiedType

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_bc_syn_inits")
  if version < 508
    let did_bc_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  let did_bc_syntax_inits = 1
  HiLink bcInstructionNop Statement
  HiLink bcInstructionPush Statement
  HiLink bcInstructionPop Statement
  HiLink bcInstructionMod Statement
  HiLink bcInstructionBranch Statement
  HiLink bcInstructionHigh Statement

  HiLink bcJavaKeyword PreProc

  HiLink bcOffset LineNr
  HiLink bcConstantID Special

  HiLink bcInvoke Function
  HiLink bcJavaType Type
  HiLink bcQualifiedType Type

  HiLink bcSpecialChar PreProc
  HiLink bcString String
  HiLink bcLiteral Constant
  HiLink bcComment Comment
  HiLink jasminComment Comment
  HiLink bcMetaTable Comment
  HiLink bcMetaLines Comment
  HiLink bcMetaLocals Comment
  delcommand HiLink
endif
