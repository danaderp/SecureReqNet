╚├
ё:╢:
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
╝
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Р
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
б
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
║
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 И
╔
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0■        "
value_indexint(0■        "+

vocab_sizeint         (0         "
	delimiterstring	И
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
2
LookupTableSizeV2
table_handle
size	И
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
w
PadV2

input"T
paddings"	Tpaddings
constant_values"T
output"T"	
Ttype"
	Tpaddingstype0:
2	
Р
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
╤
RaggedGather3
params_nested_splits"Tsplits*PARAMS_RAGGED_RANK
params_dense_values"Tvalues
indices"Tindices3
output_nested_splits"Tsplits*OUTPUT_RAGGED_RANK
output_dense_values"Tvalues"
Tvaluestype"
Tindicestype:
2	"
Tsplitstype0	:
2	"
PARAMS_RAGGED_RANKint(0"
OUTPUT_RAGGED_RANKint(
Ю
RaggedRange
starts"T
limits"T
deltas"T
rt_nested_splits"Tsplits
rt_dense_values"T"
Ttype0:	
2	"
Tsplitstype0	:
2	
Ч
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
2
Round
x"T
y"T"
Ttype:
2
	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
╝
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint         
$
StringStrip	
input

output
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
9
VarIsInitializedOp
resource
is_initialized
И"serve*2.5.0-dev202012162v1.12.1-47737-g7342dc9b1308ўЇ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
К
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
t
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
:*
dtype0*
valueBBtext
i
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
Э
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keys*
Tdense
 *<
_output_shapes*
(:         :         :*
dense_shapes
 *

num_sparse*
ragged_split_types
 *
ragged_value_types
 *
sparse_types
2
╓
ConstConst*
_output_shapes
: *
dtype0*а
valueЦBУ BМpipeline_output/tfx_pipeline_output/gamma_v1.0/Transform/transform_graph/7/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary
S
transform/ConstConst*
_output_shapes
: *
dtype0	*
valueB		 Rдн
щ
transform/Const_1Const*
_output_shapes
: *
dtype0*з
valueЭBЪ BУpipeline_output/tfx_pipeline_output/gamma_v1.0/Transform/transform_graph/7/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
М
)transform/transform/inputs/id/PlaceholderPlaceholder*'
_output_shapes
:         *
dtype0	*
shape:         
Ж
+transform/transform/inputs/id/Placeholder_1Placeholder*#
_output_shapes
:         *
dtype0*
shape:         
t
+transform/transform/inputs/id/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
О
+transform/transform/inputs/text/PlaceholderPlaceholder*'
_output_shapes
:         *
dtype0	*
shape:         
И
-transform/transform/inputs/text/Placeholder_1Placeholder*#
_output_shapes
:         *
dtype0*
shape:         
v
-transform/transform/inputs/text/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
П
,transform/transform/inputs/label/PlaceholderPlaceholder*'
_output_shapes
:         *
dtype0	*
shape:         
Й
.transform/transform/inputs/label/Placeholder_1Placeholder*#
_output_shapes
:         *
dtype0	*
shape:         
w
.transform/transform/inputs/label/Placeholder_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
Ю
5transform/transform/inputs/inputs/id/Placeholder_copyIdentity)transform/transform/inputs/id/Placeholder*
T0	*'
_output_shapes
:         
Ю
7transform/transform/inputs/inputs/id/Placeholder_1_copyIdentity+transform/transform/inputs/id/Placeholder_1*
T0*#
_output_shapes
:         
Х
7transform/transform/inputs/inputs/id/Placeholder_2_copyIdentity+transform/transform/inputs/id/Placeholder_2*
T0	*
_output_shapes
:
Т
7transform/transform/inputs/inputs/text/Placeholder_copyIdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:         
Т
9transform/transform/inputs/inputs/text/Placeholder_1_copyIdentityParseExample/ParseExampleV2:1*
T0*#
_output_shapes
:         
Й
9transform/transform/inputs/inputs/text/Placeholder_2_copyIdentityParseExample/ParseExampleV2:2*
T0	*
_output_shapes
:
д
8transform/transform/inputs/inputs/label/Placeholder_copyIdentity,transform/transform/inputs/label/Placeholder*
T0	*'
_output_shapes
:         
д
:transform/transform/inputs/inputs/label/Placeholder_1_copyIdentity.transform/transform/inputs/label/Placeholder_1*
T0	*#
_output_shapes
:         
Ы
:transform/transform/inputs/inputs/label/Placeholder_2_copyIdentity.transform/transform/inputs/label/Placeholder_2*
T0	*
_output_shapes
:
q
'transform/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)transform/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)transform/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
▒
!transform/transform/strided_sliceStridedSlice9transform/transform/inputs/inputs/text/Placeholder_2_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
p
.transform/transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
╡
,transform/transform/SparseTensor/dense_shapePack!transform/transform/strided_slice.transform/transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:
p
/transform/transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
╟
!transform/transform/SparseToDenseSparseToDense7transform/transform/inputs/inputs/text/Placeholder_copy,transform/transform/SparseTensor/dense_shape9transform/transform/inputs/inputs/text/Placeholder_1_copy/transform/transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:         
О
transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*
T0*#
_output_shapes
:         *
squeeze_dims

p
transform/transform/StringLowerStringLowertransform/transform/Squeeze*#
_output_shapes
:         
м
&transform/transform/StaticRegexReplaceStaticRegexReplacetransform/transform/StringLower*#
_output_shapes
:         *
pattern '| '|^'|'$*
rewrite 
▓
(transform/transform/StaticRegexReplace_1StaticRegexReplace&transform/transform/StaticRegexReplace*#
_output_shapes
:         *
pattern
[^a-z' ]*
rewrite 

!transform/transform/StringLower_1StringLower(transform/transform/StaticRegexReplace_1*#
_output_shapes
:         
░
(transform/transform/StaticRegexReplace_2StaticRegexReplace!transform/transform/StringLower_1*#
_output_shapes
:         *
pattern '| '|^'|'$*
rewrite 
м
(transform/transform/StaticRegexReplace_3StaticRegexReplace(transform/transform/StaticRegexReplace_2*#
_output_shapes
:         *
pattern
*
rewrite 
м
(transform/transform/StaticRegexReplace_4StaticRegexReplace(transform/transform/StaticRegexReplace_3*#
_output_shapes
:         *
pattern0*
rewrite 
м
(transform/transform/StaticRegexReplace_5StaticRegexReplace(transform/transform/StaticRegexReplace_4*#
_output_shapes
:         *
pattern1*
rewrite 
м
(transform/transform/StaticRegexReplace_6StaticRegexReplace(transform/transform/StaticRegexReplace_5*#
_output_shapes
:         *
pattern2*
rewrite 
м
(transform/transform/StaticRegexReplace_7StaticRegexReplace(transform/transform/StaticRegexReplace_6*#
_output_shapes
:         *
pattern3*
rewrite 
м
(transform/transform/StaticRegexReplace_8StaticRegexReplace(transform/transform/StaticRegexReplace_7*#
_output_shapes
:         *
pattern4*
rewrite 
м
(transform/transform/StaticRegexReplace_9StaticRegexReplace(transform/transform/StaticRegexReplace_8*#
_output_shapes
:         *
pattern5*
rewrite 
н
)transform/transform/StaticRegexReplace_10StaticRegexReplace(transform/transform/StaticRegexReplace_9*#
_output_shapes
:         *
pattern6*
rewrite 
о
)transform/transform/StaticRegexReplace_11StaticRegexReplace)transform/transform/StaticRegexReplace_10*#
_output_shapes
:         *
pattern7*
rewrite 
о
)transform/transform/StaticRegexReplace_12StaticRegexReplace)transform/transform/StaticRegexReplace_11*#
_output_shapes
:         *
pattern8*
rewrite 
о
)transform/transform/StaticRegexReplace_13StaticRegexReplace)transform/transform/StaticRegexReplace_12*#
_output_shapes
:         *
pattern9*
rewrite 
о
)transform/transform/StaticRegexReplace_14StaticRegexReplace)transform/transform/StaticRegexReplace_13*#
_output_shapes
:         *
pattern"*
rewrite 
о
)transform/transform/StaticRegexReplace_15StaticRegexReplace)transform/transform/StaticRegexReplace_14*#
_output_shapes
:         *
pattern#*
rewrite 
о
)transform/transform/StaticRegexReplace_16StaticRegexReplace)transform/transform/StaticRegexReplace_15*#
_output_shapes
:         *
pattern$*
rewrite 
о
)transform/transform/StaticRegexReplace_17StaticRegexReplace)transform/transform/StaticRegexReplace_16*#
_output_shapes
:         *
pattern%*
rewrite 
о
)transform/transform/StaticRegexReplace_18StaticRegexReplace)transform/transform/StaticRegexReplace_17*#
_output_shapes
:         *
pattern&*
rewrite 
о
)transform/transform/StaticRegexReplace_19StaticRegexReplace)transform/transform/StaticRegexReplace_18*#
_output_shapes
:         *
pattern,*
rewrite 
о
)transform/transform/StaticRegexReplace_20StaticRegexReplace)transform/transform/StaticRegexReplace_19*#
_output_shapes
:         *
pattern-*
rewrite 
о
)transform/transform/StaticRegexReplace_21StaticRegexReplace)transform/transform/StaticRegexReplace_20*#
_output_shapes
:         *
pattern/*
rewrite 
о
)transform/transform/StaticRegexReplace_22StaticRegexReplace)transform/transform/StaticRegexReplace_21*#
_output_shapes
:         *
pattern:*
rewrite 
о
)transform/transform/StaticRegexReplace_23StaticRegexReplace)transform/transform/StaticRegexReplace_22*#
_output_shapes
:         *
pattern;*
rewrite 
о
)transform/transform/StaticRegexReplace_24StaticRegexReplace)transform/transform/StaticRegexReplace_23*#
_output_shapes
:         *
pattern<*
rewrite 
о
)transform/transform/StaticRegexReplace_25StaticRegexReplace)transform/transform/StaticRegexReplace_24*#
_output_shapes
:         *
pattern=*
rewrite 
о
)transform/transform/StaticRegexReplace_26StaticRegexReplace)transform/transform/StaticRegexReplace_25*#
_output_shapes
:         *
pattern>*
rewrite 
о
)transform/transform/StaticRegexReplace_27StaticRegexReplace)transform/transform/StaticRegexReplace_26*#
_output_shapes
:         *
pattern@*
rewrite 
о
)transform/transform/StaticRegexReplace_28StaticRegexReplace)transform/transform/StaticRegexReplace_27*#
_output_shapes
:         *
pattern_*
rewrite 
о
)transform/transform/StaticRegexReplace_29StaticRegexReplace)transform/transform/StaticRegexReplace_28*#
_output_shapes
:         *
pattern`*
rewrite 
о
)transform/transform/StaticRegexReplace_30StaticRegexReplace)transform/transform/StaticRegexReplace_29*#
_output_shapes
:         *
pattern|*
rewrite 
о
)transform/transform/StaticRegexReplace_31StaticRegexReplace)transform/transform/StaticRegexReplace_30*#
_output_shapes
:         *
pattern~*
rewrite 
о
)transform/transform/StaticRegexReplace_32StaticRegexReplace)transform/transform/StaticRegexReplace_31*#
_output_shapes
:         *
pattern:*
rewrite 
о
)transform/transform/StaticRegexReplace_33StaticRegexReplace)transform/transform/StaticRegexReplace_32*#
_output_shapes
:         *
pattern'*
rewrite 
п
)transform/transform/StaticRegexReplace_34StaticRegexReplace)transform/transform/StaticRegexReplace_33*#
_output_shapes
:         *
pattern\(*
rewrite 
п
)transform/transform/StaticRegexReplace_35StaticRegexReplace)transform/transform/StaticRegexReplace_34*#
_output_shapes
:         *
pattern\)*
rewrite 
п
)transform/transform/StaticRegexReplace_36StaticRegexReplace)transform/transform/StaticRegexReplace_35*#
_output_shapes
:         *
pattern\**
rewrite 
п
)transform/transform/StaticRegexReplace_37StaticRegexReplace)transform/transform/StaticRegexReplace_36*#
_output_shapes
:         *
pattern\+*
rewrite 
п
)transform/transform/StaticRegexReplace_38StaticRegexReplace)transform/transform/StaticRegexReplace_37*#
_output_shapes
:         *
pattern\?*
rewrite 
п
)transform/transform/StaticRegexReplace_39StaticRegexReplace)transform/transform/StaticRegexReplace_38*#
_output_shapes
:         *
pattern\[*
rewrite 
п
)transform/transform/StaticRegexReplace_40StaticRegexReplace)transform/transform/StaticRegexReplace_39*#
_output_shapes
:         *
pattern\]*
rewrite 
п
)transform/transform/StaticRegexReplace_41StaticRegexReplace)transform/transform/StaticRegexReplace_40*#
_output_shapes
:         *
pattern\[*
rewrite 
п
)transform/transform/StaticRegexReplace_42StaticRegexReplace)transform/transform/StaticRegexReplace_41*#
_output_shapes
:         *
pattern\]*
rewrite 
п
)transform/transform/StaticRegexReplace_43StaticRegexReplace)transform/transform/StaticRegexReplace_42*#
_output_shapes
:         *
pattern\{*
rewrite 
п
)transform/transform/StaticRegexReplace_44StaticRegexReplace)transform/transform/StaticRegexReplace_43*#
_output_shapes
:         *
pattern\}*
rewrite 
п
)transform/transform/StaticRegexReplace_45StaticRegexReplace)transform/transform/StaticRegexReplace_44*#
_output_shapes
:         *
pattern\^*
rewrite 
п
)transform/transform/StaticRegexReplace_46StaticRegexReplace)transform/transform/StaticRegexReplace_45*#
_output_shapes
:         *
pattern\\*
rewrite 
п
)transform/transform/StaticRegexReplace_47StaticRegexReplace)transform/transform/StaticRegexReplace_46*#
_output_shapes
:         *
pattern\!*
rewrite 
п
)transform/transform/StaticRegexReplace_48StaticRegexReplace)transform/transform/StaticRegexReplace_47*#
_output_shapes
:         *
pattern\.*
rewrite 
~
transform/transform/StringStripStringStrip)transform/transform/StaticRegexReplace_48*#
_output_shapes
:         
f
%transform/transform/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 
─
-transform/transform/StringSplit/StringSplitV2StringSplitV2transform/transform/StringStrip%transform/transform/StringSplit/Const*<
_output_shapes*
(:         :         :
Д
3transform/transform/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ж
5transform/transform/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ж
5transform/transform/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Д
-transform/transform/StringSplit/strided_sliceStridedSlice-transform/transform/StringSplit/StringSplitV23transform/transform/StringSplit/strided_slice/stack5transform/transform/StringSplit/strided_slice/stack_15transform/transform/StringSplit/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask

5transform/transform/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Б
7transform/transform/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Б
7transform/transform/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
▀
/transform/transform/StringSplit/strided_slice_1StridedSlice/transform/transform/StringSplit/StringSplitV2:25transform/transform/StringSplit/strided_slice_1/stack7transform/transform/StringSplit/strided_slice_1/stack_17transform/transform/StringSplit/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
╩
Vtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast-transform/transform/StringSplit/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
┴
Xtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast/transform/transform/StringSplit/strided_slice_1*

DstT0*

SrcT0	*
_output_shapes
: 
ц
`transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeVtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast*
T0*
_output_shapes
:
к
`transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
╠
_transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd`transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape`transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const*
T0*
_output_shapes
: 
ж
dtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 
╒
btransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater_transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Proddtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y*
T0*
_output_shapes
: 
√
_transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastbtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater*

DstT0*

SrcT0
*
_output_shapes
: 
м
btransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
┬
^transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxVtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Castbtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1*
T0*
_output_shapes
: 
в
`transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :
╩
^transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2^transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max`transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y*
T0*
_output_shapes
: 
╟
^transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul_transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast^transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add*
T0*
_output_shapes
: 
╚
btransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumXtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1^transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul*
T0*
_output_shapes
: 
╠
btransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumXtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1btransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum*
T0*
_output_shapes
: 
е
btransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 
╜
ctransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountVtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Castbtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimumbtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2*
T0	*#
_output_shapes
:         
Я
]transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 
╘
Xtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumctransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount]transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis*
T0	*#
_output_shapes
:         
л
atransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 
Я
]transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
╖
Xtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2atransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Xtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum]transform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis*
N*
T0	*#
_output_shapes
:         

5transform/transform/RaggedGetItem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
К
7transform/transform/RaggedGetItem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         
Б
7transform/transform/RaggedGetItem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
П
/transform/transform/RaggedGetItem/strided_sliceStridedSliceXtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat5transform/transform/RaggedGetItem/strided_slice/stack7transform/transform/RaggedGetItem/strided_slice/stack_17transform/transform/RaggedGetItem/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:         *

begin_mask
Б
7transform/transform/RaggedGetItem/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Г
9transform/transform/RaggedGetItem/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Г
9transform/transform/RaggedGetItem/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Х
1transform/transform/RaggedGetItem/strided_slice_1StridedSliceXtransform/transform/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat7transform/transform/RaggedGetItem/strided_slice_1/stack9transform/transform/RaggedGetItem/strided_slice_1/stack_19transform/transform/RaggedGetItem/strided_slice_1/stack_2*
Index0*
T0	*#
_output_shapes
:         *
end_mask
j
(transform/transform/RaggedGetItem/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :d
И
&transform/transform/RaggedGetItem/CastCast(transform/transform/RaggedGetItem/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
╡
%transform/transform/RaggedGetItem/addAddV2/transform/transform/RaggedGetItem/strided_slice&transform/transform/RaggedGetItem/Cast*
T0	*#
_output_shapes
:         
╝
)transform/transform/RaggedGetItem/MinimumMinimum%transform/transform/RaggedGetItem/add1transform/transform/RaggedGetItem/strided_slice_1*
T0	*#
_output_shapes
:         
h
&transform/transform/RaggedGetItem/stepConst*
_output_shapes
: *
dtype0*
value	B :
И
(transform/transform/RaggedGetItem/Cast_1Cast&transform/transform/RaggedGetItem/step*

DstT0	*

SrcT0*
_output_shapes
: 
 
-transform/transform/RaggedGetItem/RaggedRangeRaggedRange/transform/transform/RaggedGetItem/strided_slice)transform/transform/RaggedGetItem/Minimum(transform/transform/RaggedGetItem/Cast_1*
T0	*2
_output_shapes 
:         :         
q
/transform/transform/RaggedGetItem/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ъ
*transform/transform/RaggedGetItem/GatherV2GatherV2/transform/transform/StringSplit/StringSplitV2:1/transform/transform/RaggedGetItem/RaggedRange:1/transform/transform/RaggedGetItem/GatherV2/axis*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:         
h
transform/transform/ShapeShapetransform/transform/StringStrip*
T0*
_output_shapes
:
s
)transform/transform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Щ
#transform/transform/strided_slice_1StridedSlicetransform/transform/Shape)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
a
transform/transform/Fill/dims/1Const*
_output_shapes
: *
dtype0*
value	B :
Щ
transform/transform/Fill/dimsPack#transform/transform/strided_slice_1transform/transform/Fill/dims/1*
N*
T0*
_output_shapes
:
f
transform/transform/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB B<START>
С
transform/transform/FillFilltransform/transform/Fill/dimstransform/transform/Fill/value*
T0*'
_output_shapes
:         
j
transform/transform/Shape_1Shapetransform/transform/StringStrip*
T0*
_output_shapes
:
s
)transform/transform/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ы
#transform/transform/strided_slice_2StridedSlicetransform/transform/Shape_1)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
c
!transform/transform/Fill_1/dims/1Const*
_output_shapes
: *
dtype0*
value	B :
Э
transform/transform/Fill_1/dimsPack#transform/transform/strided_slice_2!transform/transform/Fill_1/dims/1*
N*
T0*
_output_shapes
:
f
 transform/transform/Fill_1/valueConst*
_output_shapes
: *
dtype0*
valueB B<END>
Ч
transform/transform/Fill_1Filltransform/transform/Fill_1/dims transform/transform/Fill_1/value*
T0*'
_output_shapes
:         
П
7transform/transform/RaggedConcat/RaggedFromTensor/ShapeShapetransform/transform/Fill*
T0*
_output_shapes
:*
out_type0	
П
Etransform/transform/RaggedConcat/RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
С
Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
С
Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
з
?transform/transform/RaggedConcat/RaggedFromTensor/strided_sliceStridedSlice7transform/transform/RaggedConcat/RaggedFromTensor/ShapeEtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice/stackGtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice/stack_1Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
С
Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
п
Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1StridedSlice7transform/transform/RaggedConcat/RaggedFromTensor/ShapeGtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1/stackItransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
С
Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
п
Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2StridedSlice7transform/transform/RaggedConcat/RaggedFromTensor/ShapeGtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2/stackItransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
у
5transform/transform/RaggedConcat/RaggedFromTensor/mulMulAtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_1Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_2*
T0	*
_output_shapes
: 
С
Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
й
Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3StridedSlice7transform/transform/RaggedConcat/RaggedFromTensor/ShapeGtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3/stackItransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *
end_mask
о
Atransform/transform/RaggedConcat/RaggedFromTensor/concat/values_0Pack5transform/transform/RaggedConcat/RaggedFromTensor/mul*
N*
T0	*
_output_shapes
:

=transform/transform/RaggedConcat/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
╖
8transform/transform/RaggedConcat/RaggedFromTensor/concatConcatV2Atransform/transform/RaggedConcat/RaggedFromTensor/concat/values_0Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_3=transform/transform/RaggedConcat/RaggedFromTensor/concat/axis*
N*
T0	*
_output_shapes
:
╘
9transform/transform/RaggedConcat/RaggedFromTensor/ReshapeReshapetransform/transform/Fill8transform/transform/RaggedConcat/RaggedFromTensor/concat*
T0*
Tshape0	*#
_output_shapes
:         
С
Gtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
п
Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4StridedSlice7transform/transform/RaggedConcat/RaggedFromTensor/ShapeGtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4/stackItransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1Itransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
y
7transform/transform/RaggedConcat/RaggedFromTensor/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
╦
Rtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/ShapeShape9transform/transform/RaggedConcat/RaggedFromTensor/Reshape*
T0*
_output_shapes
:*
out_type0	
к
`transform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
м
btransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
м
btransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
о
Ztransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSliceRtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/Shape`transform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackbtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1btransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
╡
stransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
╙
qtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV2Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4stransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y*
T0	*
_output_shapes
: 
╗
ytransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
╗
ytransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
л
xtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/CastCastytransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start*

DstT0	*

SrcT0*
_output_shapes
: 
н
ztransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1Castytransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta*

DstT0	*

SrcT0*
_output_shapes
: 
Ц
stransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangextransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Castqtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addztransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1*

Tidx0	*#
_output_shapes
:         
╘
qtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMulstransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range7transform/transform/RaggedConcat/RaggedFromTensor/Const*
T0	*#
_output_shapes
:         
У
9transform/transform/RaggedConcat/RaggedFromTensor_1/ShapeShapetransform/transform/Fill_1*
T0*
_output_shapes
:*
out_type0	
С
Gtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
У
Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
▒
Atransform/transform/RaggedConcat/RaggedFromTensor_1/strided_sliceStridedSlice9transform/transform/RaggedConcat/RaggedFromTensor_1/ShapeGtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice/stackItransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
У
Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
╣
Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1StridedSlice9transform/transform/RaggedConcat/RaggedFromTensor_1/ShapeItransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1/stackKtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
У
Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
╣
Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2StridedSlice9transform/transform/RaggedConcat/RaggedFromTensor_1/ShapeItransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackKtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
щ
7transform/transform/RaggedConcat/RaggedFromTensor_1/mulMulCtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_1Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_2*
T0	*
_output_shapes
: 
У
Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
│
Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3StridedSlice9transform/transform/RaggedConcat/RaggedFromTensor_1/ShapeItransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackKtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *
end_mask
▓
Ctransform/transform/RaggedConcat/RaggedFromTensor_1/concat/values_0Pack7transform/transform/RaggedConcat/RaggedFromTensor_1/mul*
N*
T0	*
_output_shapes
:
Б
?transform/transform/RaggedConcat/RaggedFromTensor_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
┐
:transform/transform/RaggedConcat/RaggedFromTensor_1/concatConcatV2Ctransform/transform/RaggedConcat/RaggedFromTensor_1/concat/values_0Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_3?transform/transform/RaggedConcat/RaggedFromTensor_1/concat/axis*
N*
T0	*
_output_shapes
:
┌
;transform/transform/RaggedConcat/RaggedFromTensor_1/ReshapeReshapetransform/transform/Fill_1:transform/transform/RaggedConcat/RaggedFromTensor_1/concat*
T0*
Tshape0	*#
_output_shapes
:         
У
Itransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Х
Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
╣
Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4StridedSlice9transform/transform/RaggedConcat/RaggedFromTensor_1/ShapeItransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4/stackKtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1Ktransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
{
9transform/transform/RaggedConcat/RaggedFromTensor_1/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
╧
Ttransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/ShapeShape;transform/transform/RaggedConcat/RaggedFromTensor_1/Reshape*
T0*
_output_shapes
:*
out_type0	
м
btransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
о
dtransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
о
dtransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
╕
\transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_sliceStridedSliceTtransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/Shapebtransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stackdtransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1dtransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
╖
utransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
┘
stransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV2Ctransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4utransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y*
T0	*
_output_shapes
: 
╜
{transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
╜
{transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
п
ztransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/CastCast{transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start*

DstT0	*

SrcT0*
_output_shapes
: 
▒
|transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1Cast{transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta*

DstT0	*

SrcT0*
_output_shapes
: 
Ю
utransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangeztransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Caststransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add|transform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1*

Tidx0	*#
_output_shapes
:         
┌
stransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMulutransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range9transform/transform/RaggedConcat/RaggedFromTensor_1/Const*
T0	*#
_output_shapes
:         
б
4transform/transform/RaggedConcat/RaggedNRows_1/ShapeShape-transform/transform/RaggedGetItem/RaggedRange*
T0	*
_output_shapes
:*
out_type0	
М
Btransform/transform/RaggedConcat/RaggedNRows_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
О
Dtransform/transform/RaggedConcat/RaggedNRows_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
О
Dtransform/transform/RaggedConcat/RaggedNRows_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ш
<transform/transform/RaggedConcat/RaggedNRows_1/strided_sliceStridedSlice4transform/transform/RaggedConcat/RaggedNRows_1/ShapeBtransform/transform/RaggedConcat/RaggedNRows_1/strided_slice/stackDtransform/transform/RaggedConcat/RaggedNRows_1/strided_slice/stack_1Dtransform/transform/RaggedConcat/RaggedNRows_1/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
v
4transform/transform/RaggedConcat/RaggedNRows_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
╬
2transform/transform/RaggedConcat/RaggedNRows_1/subSub<transform/transform/RaggedConcat/RaggedNRows_1/strided_slice4transform/transform/RaggedConcat/RaggedNRows_1/sub/y*
T0	*
_output_shapes
: 
╓
5transform/transform/RaggedConcat/assert_equal_1/EqualEqual2transform/transform/RaggedConcat/RaggedNRows_1/subAtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4*
T0	*
_output_shapes
: 
v
4transform/transform/RaggedConcat/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 
}
;transform/transform/RaggedConcat/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
}
;transform/transform/RaggedConcat/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
И
5transform/transform/RaggedConcat/assert_equal_1/rangeRange;transform/transform/RaggedConcat/assert_equal_1/range/start4transform/transform/RaggedConcat/assert_equal_1/Rank;transform/transform/RaggedConcat/assert_equal_1/range/delta*
_output_shapes
: 
└
3transform/transform/RaggedConcat/assert_equal_1/AllAll5transform/transform/RaggedConcat/assert_equal_1/Equal5transform/transform/RaggedConcat/assert_equal_1/range*
_output_shapes
: 
д
<transform/transform/RaggedConcat/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.
к
>transform/transform/RaggedConcat/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
ж
>transform/transform/RaggedConcat/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*8
value/B- B'x (RaggedConcat/RaggedNRows_1/sub:0) = 
╡
>transform/transform/RaggedConcat/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 
ш
Btransform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuardIf3transform/transform/RaggedConcat/assert_equal_1/All3transform/transform/RaggedConcat/assert_equal_1/All2transform/transform/RaggedConcat/RaggedNRows_1/subAtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *O
else_branch@R>
<RaggedConcat_assert_equal_1_Assert_AssertGuard_false_2847859*
output_shapes
: *N
then_branch?R=
;RaggedConcat_assert_equal_1_Assert_AssertGuard_true_2847858
╝
Ktransform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityBtransform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
ч
5transform/transform/RaggedConcat/assert_equal_3/EqualEqualCtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4*
T0	*
_output_shapes
: 
v
4transform/transform/RaggedConcat/assert_equal_3/RankConst*
_output_shapes
: *
dtype0*
value	B : 
}
;transform/transform/RaggedConcat/assert_equal_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
}
;transform/transform/RaggedConcat/assert_equal_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
И
5transform/transform/RaggedConcat/assert_equal_3/rangeRange;transform/transform/RaggedConcat/assert_equal_3/range/start4transform/transform/RaggedConcat/assert_equal_3/Rank;transform/transform/RaggedConcat/assert_equal_3/range/delta*
_output_shapes
: 
└
3transform/transform/RaggedConcat/assert_equal_3/AllAll5transform/transform/RaggedConcat/assert_equal_3/Equal5transform/transform/RaggedConcat/assert_equal_3/range*
_output_shapes
: 
д
<transform/transform/RaggedConcat/assert_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.
к
>transform/transform/RaggedConcat/assert_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
╖
>transform/transform/RaggedConcat/assert_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*I
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = 
╡
>transform/transform/RaggedConcat/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 
∙
Btransform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuardIf3transform/transform/RaggedConcat/assert_equal_3/All3transform/transform/RaggedConcat/assert_equal_3/AllCtransform/transform/RaggedConcat/RaggedFromTensor_1/strided_slice_4Atransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *O
else_branch@R>
<RaggedConcat_assert_equal_3_Assert_AssertGuard_false_2847887*
output_shapes
: *N
then_branch?R=
;RaggedConcat_assert_equal_3_Assert_AssertGuard_true_2847886
╝
Ktransform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityBtransform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
К
,transform/transform/RaggedConcat/concat/axisConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 
╝
'transform/transform/RaggedConcat/concatConcatV29transform/transform/RaggedConcat/RaggedFromTensor/Reshape*transform/transform/RaggedGetItem/GatherV2;transform/transform/RaggedConcat/RaggedFromTensor_1/Reshape,transform/transform/RaggedConcat/concat/axis*
N*
T0*#
_output_shapes
:         
г
4transform/transform/RaggedConcat/strided_slice/stackConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
         
Ь
6transform/transform/RaggedConcat/strided_slice/stack_1ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ь
6transform/transform/RaggedConcat/strided_slice/stack_2ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
Э
.transform/transform/RaggedConcat/strided_sliceStridedSliceqtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul4transform/transform/RaggedConcat/strided_slice/stack6transform/transform/RaggedConcat/strided_slice/stack_16transform/transform/RaggedConcat/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
Ь
6transform/transform/RaggedConcat/strided_slice_1/stackConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
Ю
8transform/transform/RaggedConcat/strided_slice_1/stack_1ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ю
8transform/transform/RaggedConcat/strided_slice_1/stack_2ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
ц
0transform/transform/RaggedConcat/strided_slice_1StridedSlice-transform/transform/RaggedGetItem/RaggedRange6transform/transform/RaggedConcat/strided_slice_1/stack8transform/transform/RaggedConcat/strided_slice_1/stack_18transform/transform/RaggedConcat/strided_slice_1/stack_2*
Index0*
T0	*#
_output_shapes
:         *
end_mask
╜
$transform/transform/RaggedConcat/addAddV20transform/transform/RaggedConcat/strided_slice_1.transform/transform/RaggedConcat/strided_slice*
T0	*#
_output_shapes
:         
е
6transform/transform/RaggedConcat/strided_slice_2/stackConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
         
Ю
8transform/transform/RaggedConcat/strided_slice_2/stack_1ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ю
8transform/transform/RaggedConcat/strided_slice_2/stack_2ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
с
0transform/transform/RaggedConcat/strided_slice_2StridedSlice-transform/transform/RaggedGetItem/RaggedRange6transform/transform/RaggedConcat/strided_slice_2/stack8transform/transform/RaggedConcat/strided_slice_2/stack_18transform/transform/RaggedConcat/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
▓
&transform/transform/RaggedConcat/add_1AddV2.transform/transform/RaggedConcat/strided_slice0transform/transform/RaggedConcat/strided_slice_2*
T0	*
_output_shapes
: 
Ь
6transform/transform/RaggedConcat/strided_slice_3/stackConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
Ю
8transform/transform/RaggedConcat/strided_slice_3/stack_1ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ю
8transform/transform/RaggedConcat/strided_slice_3/stack_2ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
м
0transform/transform/RaggedConcat/strided_slice_3StridedSlicestransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul6transform/transform/RaggedConcat/strided_slice_3/stack8transform/transform/RaggedConcat/strided_slice_3/stack_18transform/transform/RaggedConcat/strided_slice_3/stack_2*
Index0*
T0	*#
_output_shapes
:         *
end_mask
╖
&transform/transform/RaggedConcat/add_2AddV20transform/transform/RaggedConcat/strided_slice_3&transform/transform/RaggedConcat/add_1*
T0	*#
_output_shapes
:         
е
6transform/transform/RaggedConcat/strided_slice_4/stackConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
         
Ю
8transform/transform/RaggedConcat/strided_slice_4/stack_1ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ю
8transform/transform/RaggedConcat/strided_slice_4/stack_2ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
з
0transform/transform/RaggedConcat/strided_slice_4StridedSlicestransform/transform/RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul6transform/transform/RaggedConcat/strided_slice_4/stack8transform/transform/RaggedConcat/strided_slice_4/stack_18transform/transform/RaggedConcat/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
к
&transform/transform/RaggedConcat/add_3AddV2&transform/transform/RaggedConcat/add_10transform/transform/RaggedConcat/strided_slice_4*
T0	*
_output_shapes
: 
М
.transform/transform/RaggedConcat/concat_1/axisConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 
▌
)transform/transform/RaggedConcat/concat_1ConcatV2qtransform/transform/RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul$transform/transform/RaggedConcat/add&transform/transform/RaggedConcat/add_2.transform/transform/RaggedConcat/concat_1/axis*
N*
T0	*#
_output_shapes
:         
Д
&transform/transform/RaggedConcat/mul/yConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R
╖
$transform/transform/RaggedConcat/mulMulAtransform/transform/RaggedConcat/RaggedFromTensor/strided_slice_4&transform/transform/RaggedConcat/mul/y*
T0	*
_output_shapes
: 
К
,transform/transform/RaggedConcat/range/startConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 
К
,transform/transform/RaggedConcat/range/deltaConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :
С
+transform/transform/RaggedConcat/range/CastCast,transform/transform/RaggedConcat/range/start*

DstT0	*

SrcT0*
_output_shapes
: 
У
-transform/transform/RaggedConcat/range/Cast_1Cast,transform/transform/RaggedConcat/range/delta*

DstT0	*

SrcT0*
_output_shapes
: 
т
&transform/transform/RaggedConcat/rangeRange+transform/transform/RaggedConcat/range/Cast$transform/transform/RaggedConcat/mul-transform/transform/RaggedConcat/range/Cast_1*

Tidx0	*#
_output_shapes
:         
Ы
.transform/transform/RaggedConcat/Reshape/shapeConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"       
╜
(transform/transform/RaggedConcat/ReshapeReshape&transform/transform/RaggedConcat/range.transform/transform/RaggedConcat/Reshape/shape*
T0	*'
_output_shapes
:         
Ь
/transform/transform/RaggedConcat/transpose/permConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"       
─
*transform/transform/RaggedConcat/transpose	Transpose(transform/transform/RaggedConcat/Reshape/transform/transform/RaggedConcat/transpose/perm*
T0	*'
_output_shapes
:         
Я
0transform/transform/RaggedConcat/Reshape_1/shapeConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
         
┴
*transform/transform/RaggedConcat/Reshape_1Reshape*transform/transform/RaggedConcat/transpose0transform/transform/RaggedConcat/Reshape_1/shape*
T0	*#
_output_shapes
:         
╤
:transform/transform/RaggedConcat/RaggedGather/RaggedGatherRaggedGather)transform/transform/RaggedConcat/concat_1'transform/transform/RaggedConcat/concat*transform/transform/RaggedConcat/Reshape_1*
OUTPUT_RAGGED_RANK*
PARAMS_RAGGED_RANK*
Tindices0	*
Tvalues0*2
_output_shapes 
:         :         
Ь
6transform/transform/RaggedConcat/strided_slice_5/stackConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ю
8transform/transform/RaggedConcat/strided_slice_5/stack_1ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 
Ю
8transform/transform/RaggedConcat/strided_slice_5/stack_2ConstL^transform/transform/RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityL^transform/transform/RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
Е
0transform/transform/RaggedConcat/strided_slice_5StridedSlice:transform/transform/RaggedConcat/RaggedGather/RaggedGather6transform/transform/RaggedConcat/strided_slice_5/stack8transform/transform/RaggedConcat/strided_slice_5/stack_18transform/transform/RaggedConcat/strided_slice_5/stack_2*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask
Б
7transform/transform/RaggedGetItem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
М
9transform/transform/RaggedGetItem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         
Г
9transform/transform/RaggedGetItem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
я
1transform/transform/RaggedGetItem_1/strided_sliceStridedSlice0transform/transform/RaggedConcat/strided_slice_57transform/transform/RaggedGetItem_1/strided_slice/stack9transform/transform/RaggedGetItem_1/strided_slice/stack_19transform/transform/RaggedGetItem_1/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:         *

begin_mask
Г
9transform/transform/RaggedGetItem_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Е
;transform/transform/RaggedGetItem_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Е
;transform/transform/RaggedGetItem_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ї
3transform/transform/RaggedGetItem_1/strided_slice_1StridedSlice0transform/transform/RaggedConcat/strided_slice_59transform/transform/RaggedGetItem_1/strided_slice_1/stack;transform/transform/RaggedGetItem_1/strided_slice_1/stack_1;transform/transform/RaggedGetItem_1/strided_slice_1/stack_2*
Index0*
T0	*#
_output_shapes
:         *
end_mask
l
*transform/transform/RaggedGetItem_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :d
М
(transform/transform/RaggedGetItem_1/CastCast*transform/transform/RaggedGetItem_1/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
╗
'transform/transform/RaggedGetItem_1/addAddV21transform/transform/RaggedGetItem_1/strided_slice(transform/transform/RaggedGetItem_1/Cast*
T0	*#
_output_shapes
:         
┬
+transform/transform/RaggedGetItem_1/MinimumMinimum'transform/transform/RaggedGetItem_1/add3transform/transform/RaggedGetItem_1/strided_slice_1*
T0	*#
_output_shapes
:         
j
(transform/transform/RaggedGetItem_1/stepConst*
_output_shapes
: *
dtype0*
value	B :
М
*transform/transform/RaggedGetItem_1/Cast_1Cast(transform/transform/RaggedGetItem_1/step*

DstT0	*

SrcT0*
_output_shapes
: 
З
/transform/transform/RaggedGetItem_1/RaggedRangeRaggedRange1transform/transform/RaggedGetItem_1/strided_slice+transform/transform/RaggedGetItem_1/Minimum*transform/transform/RaggedGetItem_1/Cast_1*
T0	*2
_output_shapes 
:         :         
s
1transform/transform/RaggedGetItem_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
н
,transform/transform/RaggedGetItem_1/GatherV2GatherV2<transform/transform/RaggedConcat/RaggedGather/RaggedGather:11transform/transform/RaggedGetItem_1/RaggedRange:11transform/transform/RaggedGetItem_1/GatherV2/axis*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:         
v
0transform/transform/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0*
valueB B<PAD>
s
(transform/transform/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         
й
7transform/transform/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor(transform/transform/RaggedToTensor/Const,transform/transform/RaggedGetItem_1/GatherV20transform/transform/RaggedToTensor/default_value/transform/transform/RaggedGetItem_1/RaggedRange*
T0*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS
В
transform/transform/Shape_2Shape7transform/transform/RaggedToTensor/RaggedTensorToTensor*
T0*
_output_shapes
:
s
)transform/transform/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ы
#transform/transform/strided_slice_3StridedSlicetransform/transform/Shape_2)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
[
transform/transform/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d

transform/transform/subSubtransform/transform/sub/x#transform/transform/strided_slice_3*
T0*
_output_shapes
: 
h
&transform/transform/PadV2/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 
Ы
$transform/transform/PadV2/paddings/1Pack&transform/transform/PadV2/paddings/1/0transform/transform/sub*
N*
T0*
_output_shapes
:
w
&transform/transform/PadV2/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        
к
"transform/transform/PadV2/paddingsPack&transform/transform/PadV2/paddings/0_1$transform/transform/PadV2/paddings/1*
N*
T0*
_output_shapes

:
o
)transform/transform/PadV2/constant_valuesConst*
_output_shapes
: *
dtype0*
valueB B<PAD>
х
transform/transform/PadV2PadV27transform/transform/RaggedToTensor/RaggedTensorToTensor"transform/transform/PadV2/paddings)transform/transform/PadV2/constant_values*
T0*0
_output_shapes
:                  
r
!transform/transform/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   
Ц
transform/transform/ReshapeReshapetransform/transform/PadV2!transform/transform/Reshape/shape*
T0*'
_output_shapes
:         d
Ь
Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
ф
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/transform/ReshapeItransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*#
_output_shapes
:         
╛
}transform/transform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
И
Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
Н
Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         
Н
Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	
Р
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst*
	key_index■        *
value_index         
ф
ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
Ф
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rd
╛
Ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
═
Ztransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Reshape*'
_output_shapes
:         d*
num_bucketsd
ё
rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/transform/ReshapeBtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*'
_output_shapes
:         d
ц
ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
┘
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddZtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:         d
═
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*'
_output_shapes
:         d
╢
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:         d
Ж
Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Д
Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
■
@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubPtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
║
#transform/transform/strided_slice_4StridedSlice:transform/transform/inputs/inputs/label/Placeholder_2_copy)transform/transform/strided_slice_4/stack+transform/transform/strided_slice_4/stack_1+transform/transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_1/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
╗
.transform/transform/SparseTensor_1/dense_shapePack#transform/transform/strided_slice_40transform/transform/SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:
|
1transform/transform/SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
         
╧
#transform/transform/SparseToDense_1SparseToDense8transform/transform/inputs/inputs/label/Placeholder_copy.transform/transform/SparseTensor_1/dense_shape:transform/transform/inputs/inputs/label/Placeholder_1_copy1transform/transform/SparseToDense_1/default_value*
T0	*
Tindices0	*'
_output_shapes
:         
Т
transform/transform/Squeeze_1Squeeze#transform/transform/SparseToDense_1*
T0	*#
_output_shapes
:         *
squeeze_dims

 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
б
.ff/embeddings/Initializer/random_uniform/shapeConst* 
_class
loc:@ff/embeddings*
_output_shapes
:*
dtype0*
valueB"t'     
У
,ff/embeddings/Initializer/random_uniform/minConst* 
_class
loc:@ff/embeddings*
_output_shapes
: *
dtype0*
valueB
 *&В╟╝
У
,ff/embeddings/Initializer/random_uniform/maxConst* 
_class
loc:@ff/embeddings*
_output_shapes
: *
dtype0*
valueB
 *&В╟<
╨
6ff/embeddings/Initializer/random_uniform/RandomUniformRandomUniform.ff/embeddings/Initializer/random_uniform/shape*
T0* 
_class
loc:@ff/embeddings*
_output_shapes
:	ЇN*
dtype0
╥
,ff/embeddings/Initializer/random_uniform/subSub,ff/embeddings/Initializer/random_uniform/max,ff/embeddings/Initializer/random_uniform/min*
T0* 
_class
loc:@ff/embeddings*
_output_shapes
: 
х
,ff/embeddings/Initializer/random_uniform/mulMul6ff/embeddings/Initializer/random_uniform/RandomUniform,ff/embeddings/Initializer/random_uniform/sub*
T0* 
_class
loc:@ff/embeddings*
_output_shapes
:	ЇN
╫
(ff/embeddings/Initializer/random_uniformAdd,ff/embeddings/Initializer/random_uniform/mul,ff/embeddings/Initializer/random_uniform/min*
T0* 
_class
loc:@ff/embeddings*
_output_shapes
:	ЇN
Щ
ff/embeddingsVarHandleOp* 
_class
loc:@ff/embeddings*
_output_shapes
: *
dtype0*
shape:	ЇN*
shared_nameff/embeddings
k
.ff/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpff/embeddings*
_output_shapes
: 
n
ff/embeddings/AssignAssignVariableOpff/embeddings(ff/embeddings/Initializer/random_uniform*
dtype0
p
!ff/embeddings/Read/ReadVariableOpReadVariableOpff/embeddings*
_output_shapes
:	ЇN*
dtype0
∙
ff/embedding_lookupResourceGatherff/embeddingsWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2*
Tindices0	* 
_class
loc:@ff/embeddings*+
_output_shapes
:         d*
dtype0
Х
ff/embedding_lookup/IdentityIdentityff/embedding_lookup*
T0* 
_class
loc:@ff/embeddings*+
_output_shapes
:         d
~
ff/embedding_lookup/Identity_1Identityff/embedding_lookup/Identity*
T0*+
_output_shapes
:         d
e
#ff/average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
м
ff/average_pooling1d/ExpandDims
ExpandDimsff/embedding_lookup/Identity_1#ff/average_pooling1d/ExpandDims/dim*
T0*/
_output_shapes
:         d
╛
ff/average_pooling1d/AvgPoolAvgPoolff/average_pooling1d/ExpandDims*
T0*/
_output_shapes
:         *
ksize
d*
paddingVALID*
strides
d
Т
ff/average_pooling1d/SqueezeSqueezeff/average_pooling1d/AvgPool*
T0*+
_output_shapes
:         *
squeeze_dims

a
ff/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       
w

ff/ReshapeReshapeff/average_pooling1d/Squeezeff/Reshape/shape*
T0*'
_output_shapes
:         
е
0ff/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@ff/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ч
.ff/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@ff/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *╫│▌╛
Ч
.ff/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@ff/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *╫│▌>
╒
8ff/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0ff/dense/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@ff/dense/kernel*
_output_shapes

:*
dtype0
┌
.ff/dense/kernel/Initializer/random_uniform/subSub.ff/dense/kernel/Initializer/random_uniform/max.ff/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@ff/dense/kernel*
_output_shapes
: 
ь
.ff/dense/kernel/Initializer/random_uniform/mulMul8ff/dense/kernel/Initializer/random_uniform/RandomUniform.ff/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@ff/dense/kernel*
_output_shapes

:
▐
*ff/dense/kernel/Initializer/random_uniformAdd.ff/dense/kernel/Initializer/random_uniform/mul.ff/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@ff/dense/kernel*
_output_shapes

:
Ю
ff/dense/kernelVarHandleOp*"
_class
loc:@ff/dense/kernel*
_output_shapes
: *
dtype0*
shape
:* 
shared_nameff/dense/kernel
o
0ff/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpff/dense/kernel*
_output_shapes
: 
t
ff/dense/kernel/AssignAssignVariableOpff/dense/kernel*ff/dense/kernel/Initializer/random_uniform*
dtype0
s
#ff/dense/kernel/Read/ReadVariableOpReadVariableOpff/dense/kernel*
_output_shapes

:*
dtype0
О
ff/dense/bias/Initializer/zerosConst* 
_class
loc:@ff/dense/bias*
_output_shapes
:*
dtype0*
valueB*    
Ф
ff/dense/biasVarHandleOp* 
_class
loc:@ff/dense/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameff/dense/bias
k
.ff/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpff/dense/bias*
_output_shapes
: 
e
ff/dense/bias/AssignAssignVariableOpff/dense/biasff/dense/bias/Initializer/zeros*
dtype0
k
!ff/dense/bias/Read/ReadVariableOpReadVariableOpff/dense/bias*
_output_shapes
:*
dtype0
n
ff/dense/MatMul/ReadVariableOpReadVariableOpff/dense/kernel*
_output_shapes

:*
dtype0
w
ff/dense/MatMulMatMul
ff/Reshapeff/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
i
ff/dense/BiasAdd/ReadVariableOpReadVariableOpff/dense/bias*
_output_shapes
:*
dtype0

ff/dense/BiasAddBiasAddff/dense/MatMulff/dense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
Y
ff/dense/ReluReluff/dense/BiasAdd*
T0*'
_output_shapes
:         
й
2ff/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@ff/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ы
0ff/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@ff/dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *0┐
Ы
0ff/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@ff/dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *0?
█
:ff/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2ff/dense_1/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@ff/dense_1/kernel*
_output_shapes

:*
dtype0
т
0ff/dense_1/kernel/Initializer/random_uniform/subSub0ff/dense_1/kernel/Initializer/random_uniform/max0ff/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@ff/dense_1/kernel*
_output_shapes
: 
Ї
0ff/dense_1/kernel/Initializer/random_uniform/mulMul:ff/dense_1/kernel/Initializer/random_uniform/RandomUniform0ff/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@ff/dense_1/kernel*
_output_shapes

:
ц
,ff/dense_1/kernel/Initializer/random_uniformAdd0ff/dense_1/kernel/Initializer/random_uniform/mul0ff/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@ff/dense_1/kernel*
_output_shapes

:
д
ff/dense_1/kernelVarHandleOp*$
_class
loc:@ff/dense_1/kernel*
_output_shapes
: *
dtype0*
shape
:*"
shared_nameff/dense_1/kernel
s
2ff/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpff/dense_1/kernel*
_output_shapes
: 
z
ff/dense_1/kernel/AssignAssignVariableOpff/dense_1/kernel,ff/dense_1/kernel/Initializer/random_uniform*
dtype0
w
%ff/dense_1/kernel/Read/ReadVariableOpReadVariableOpff/dense_1/kernel*
_output_shapes

:*
dtype0
Т
!ff/dense_1/bias/Initializer/zerosConst*"
_class
loc:@ff/dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
Ъ
ff/dense_1/biasVarHandleOp*"
_class
loc:@ff/dense_1/bias*
_output_shapes
: *
dtype0*
shape:* 
shared_nameff/dense_1/bias
o
0ff/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpff/dense_1/bias*
_output_shapes
: 
k
ff/dense_1/bias/AssignAssignVariableOpff/dense_1/bias!ff/dense_1/bias/Initializer/zeros*
dtype0
o
#ff/dense_1/bias/Read/ReadVariableOpReadVariableOpff/dense_1/bias*
_output_shapes
:*
dtype0
r
 ff/dense_1/MatMul/ReadVariableOpReadVariableOpff/dense_1/kernel*
_output_shapes

:*
dtype0
~
ff/dense_1/MatMulMatMulff/dense/Relu ff/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
m
!ff/dense_1/BiasAdd/ReadVariableOpReadVariableOpff/dense_1/bias*
_output_shapes
:*
dtype0
Е
ff/dense_1/BiasAddBiasAddff/dense_1/MatMul!ff/dense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
c
ff/dense_1/SigmoidSigmoidff/dense_1/BiasAdd*
T0*'
_output_shapes
:         
T
RoundRoundff/dense_1/Sigmoid*
T0*'
_output_shapes
:         

initNoOp
Г
init_all_tablesNoOpj^transform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
╬
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*s
valuejBhBff/dense/biasBff/dense/kernelBff/dense_1/biasBff/dense_1/kernelBff/embeddingsBglobal_step
~
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 
р
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!ff/dense/bias/Read/ReadVariableOp#ff/dense/kernel/Read/ReadVariableOp#ff/dense_1/bias/Read/ReadVariableOp%ff/dense_1/kernel/Read/ReadVariableOp!ff/embeddings/Read/ReadVariableOpglobal_step/Read/ReadVariableOp"/device:CPU:0*
dtypes

2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
╤
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*s
valuejBhBff/dense/biasBff/dense/kernelBff/dense_1/biasBff/dense_1/kernelBff/embeddingsBglobal_step
Б
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 
╕
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
V
save/AssignVariableOpAssignVariableOpff/dense/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpff/dense/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
Z
save/AssignVariableOp_2AssignVariableOpff/dense_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
\
save/AssignVariableOp_3AssignVariableOpff/dense_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
X
save/AssignVariableOp_4AssignVariableOpff/embeddingssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0	*
_output_shapes
:
V
save/AssignVariableOp_5AssignVariableOpglobal_stepsave/Identity_6*
dtype0	
┤
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5
-
save/restore_allNoOp^save/restore_shard¤
╦

р
<RaggedConcat_assert_equal_1_Assert_AssertGuard_false_2847859*
&assert_raggedconcat_assert_equal_1_all
)
%assert_raggedconcat_raggednrows_1_sub	8
4assert_raggedconcat_raggedfromtensor_strided_slice_4	
identity
ИЖ
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2
Assert/data_0К
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2
Assert/data_1Ж
Assert/data_2Const*
_output_shapes
: *
dtype0*8
value/B- B'x (RaggedConcat/RaggedNRows_1/sub:0) = 2
Assert/data_2Х
Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 2
Assert/data_4ж
AssertAssert&assert_raggedconcat_assert_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0%assert_raggedconcat_raggednrows_1_subAssert/data_4:output:04assert_raggedconcat_raggedfromtensor_strided_slice_4*
T

2		*
_output_shapes
 2
Assertr
IdentityIdentity&assert_raggedconcat_assert_equal_1_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╘
Э
;RaggedConcat_assert_equal_3_Assert_AssertGuard_true_2847886,
(identity_raggedconcat_assert_equal_3_all

placeholder	
placeholder_1	
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpr
IdentityIdentity(identity_raggedconcat_assert_equal_3_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╘
Э
;RaggedConcat_assert_equal_1_Assert_AssertGuard_true_2847858,
(identity_raggedconcat_assert_equal_1_all

placeholder	
placeholder_1	
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpr
IdentityIdentity(identity_raggedconcat_assert_equal_1_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
■

ё
<RaggedConcat_assert_equal_3_Assert_AssertGuard_false_2847887*
&assert_raggedconcat_assert_equal_3_all
:
6assert_raggedconcat_raggedfromtensor_1_strided_slice_4	8
4assert_raggedconcat_raggedfromtensor_strided_slice_4	
identity
ИЖ
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2
Assert/data_0К
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2
Assert/data_1Ч
Assert/data_2Const*
_output_shapes
: *
dtype0*I
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = 2
Assert/data_2Х
Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 2
Assert/data_4╖
AssertAssert&assert_raggedconcat_assert_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:06assert_raggedconcat_raggedfromtensor_1_strided_slice_4Assert/data_4:output:04assert_raggedconcat_raggedfromtensor_strided_slice_4*
T

2		*
_output_shapes
 2
Assertr
IdentityIdentity&assert_raggedconcat_assert_equal_3_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "ш<
save/Const:0save/Identity:0save/restore_all (5 @F8"
asset_filepaths
	
Const:0"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"Г
saved_model_assetsm*k
i
+type.googleapis.com/tensorflow.AssetFileDef:
	
Const:0-vocab_compute_and_apply_vocabulary_vocabulary"%
saved_model_main_op


group_deps"В
table_initializerm
k
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2"a
tft_schema_override_maxF
D
Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0"e
tft_schema_override_minJ
H
Ftransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0"{
tft_schema_override_tensor]
[
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0"б
trainable_variablesЙЖ
|
ff/embeddings:0ff/embeddings/Assign#ff/embeddings/Read/ReadVariableOp:0(2*ff/embeddings/Initializer/random_uniform:08
Д
ff/dense/kernel:0ff/dense/kernel/Assign%ff/dense/kernel/Read/ReadVariableOp:0(2,ff/dense/kernel/Initializer/random_uniform:08
s
ff/dense/bias:0ff/dense/bias/Assign#ff/dense/bias/Read/ReadVariableOp:0(2!ff/dense/bias/Initializer/zeros:08
М
ff/dense_1/kernel:0ff/dense_1/kernel/Assign'ff/dense_1/kernel/Read/ReadVariableOp:0(2.ff/dense_1/kernel/Initializer/random_uniform:08
{
ff/dense_1/bias:0ff/dense_1/bias/Assign%ff/dense_1/bias/Read/ReadVariableOp:0(2#ff/dense_1/bias/Initializer/zeros:08"Д
	variablesЎє
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
|
ff/embeddings:0ff/embeddings/Assign#ff/embeddings/Read/ReadVariableOp:0(2*ff/embeddings/Initializer/random_uniform:08
Д
ff/dense/kernel:0ff/dense/kernel/Assign%ff/dense/kernel/Read/ReadVariableOp:0(2,ff/dense/kernel/Initializer/random_uniform:08
s
ff/dense/bias:0ff/dense/bias/Assign#ff/dense/bias/Read/ReadVariableOp:0(2!ff/dense/bias/Initializer/zeros:08
М
ff/dense_1/kernel:0ff/dense_1/kernel/Assign'ff/dense_1/kernel/Read/ReadVariableOp:0(2.ff/dense_1/kernel/Initializer/random_uniform:08
{
ff/dense_1/bias:0ff/dense_1/bias/Assign%ff/dense_1/bias/Read/ReadVariableOp:0(2#ff/dense_1/bias/Initializer/zeros:08*╘
serving_default└
5
examples)
input_example_tensor:0         -
predictions
Round:0         <
probabilities+
ff/dense_1/Sigmoid:0         tensorflow/serving/predict