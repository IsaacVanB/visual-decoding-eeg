┬є
Хх
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
;
Elu
features"T
activations"T"
Ttype:
2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628ж╟
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_9/bias
w
'Adam/v/dense_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_9/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_9/bias
w
'Adam/m/dense_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_9/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/v/dense_9/kernel
А
)Adam/v/dense_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_9/kernel*
_output_shapes
:	А*
dtype0
З
Adam/m/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/m/dense_9/kernel
А
)Adam/m/dense_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_9/kernel*
_output_shapes
:	А*
dtype0

Adam/v/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/v/dense_8/bias
x
'Adam/v/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/bias*
_output_shapes	
:А*
dtype0

Adam/m/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/m/dense_8/bias
x
'Adam/m/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/bias*
_output_shapes	
:А*
dtype0
И
Adam/v/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ША*&
shared_nameAdam/v/dense_8/kernel
Б
)Adam/v/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/kernel* 
_output_shapes
:
ША*
dtype0
И
Adam/m/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ША*&
shared_nameAdam/m/dense_8/kernel
Б
)Adam/m/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/kernel* 
_output_shapes
:
ША*
dtype0
Ъ
!Adam/v/layer_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adam/v/layer_normalization_9/beta
У
5Adam/v/layer_normalization_9/beta/Read/ReadVariableOpReadVariableOp!Adam/v/layer_normalization_9/beta*
_output_shapes
:(*
dtype0
Ъ
!Adam/m/layer_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adam/m/layer_normalization_9/beta
У
5Adam/m/layer_normalization_9/beta/Read/ReadVariableOpReadVariableOp!Adam/m/layer_normalization_9/beta*
_output_shapes
:(*
dtype0
Ь
"Adam/v/layer_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/v/layer_normalization_9/gamma
Х
6Adam/v/layer_normalization_9/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/layer_normalization_9/gamma*
_output_shapes
:(*
dtype0
Ь
"Adam/m/layer_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/m/layer_normalization_9/gamma
Х
6Adam/m/layer_normalization_9/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/layer_normalization_9/gamma*
_output_shapes
:(*
dtype0
А
Adam/v/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/v/conv2d_9/bias
y
(Adam/v/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/bias*
_output_shapes
:(*
dtype0
А
Adam/m/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/m/conv2d_9/bias
y
(Adam/m/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/bias*
_output_shapes
:(*
dtype0
Р
Adam/v/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*'
shared_nameAdam/v/conv2d_9/kernel
Й
*Adam/v/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/kernel*&
_output_shapes
:(*
dtype0
Р
Adam/m/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*'
shared_nameAdam/m/conv2d_9/kernel
Й
*Adam/m/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/kernel*&
_output_shapes
:(*
dtype0
Ъ
!Adam/v/layer_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/layer_normalization_8/beta
У
5Adam/v/layer_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/v/layer_normalization_8/beta*
_output_shapes
:*
dtype0
Ъ
!Adam/m/layer_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/layer_normalization_8/beta
У
5Adam/m/layer_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/m/layer_normalization_8/beta*
_output_shapes
:*
dtype0
Ь
"Adam/v/layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/layer_normalization_8/gamma
Х
6Adam/v/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/layer_normalization_8/gamma*
_output_shapes
:*
dtype0
Ь
"Adam/m/layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/layer_normalization_8/gamma
Х
6Adam/m/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/layer_normalization_8/gamma*
_output_shapes
:*
dtype0
А
Adam/v/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d_8/bias
y
(Adam/v/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/bias*
_output_shapes
:*
dtype0
А
Adam/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d_8/bias
y
(Adam/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/bias*
_output_shapes
:*
dtype0
Р
Adam/v/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_8/kernel
Й
*Adam/v/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/kernel*&
_output_shapes
:*
dtype0
Р
Adam/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_8/kernel
Й
*Adam/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	А*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:А*
dtype0
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ША*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
ША*
dtype0
М
layer_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*+
shared_namelayer_normalization_9/beta
Е
.layer_normalization_9/beta/Read/ReadVariableOpReadVariableOplayer_normalization_9/beta*
_output_shapes
:(*
dtype0
О
layer_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelayer_normalization_9/gamma
З
/layer_normalization_9/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_9/gamma*
_output_shapes
:(*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:(*
dtype0
В
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:(*
dtype0
М
layer_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_8/beta
Е
.layer_normalization_8/beta/Read/ReadVariableOpReadVariableOplayer_normalization_8/beta*
_output_shapes
:*
dtype0
О
layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_8/gamma
З
/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_8/gamma*
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0
В
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
К
serving_default_input_5Placeholder*/
_output_shapes
:         d*
dtype0*$
shape:         d
╕
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5conv2d_8/kernelconv2d_8/biaslayer_normalization_8/gammalayer_normalization_8/betaconv2d_9/kernelconv2d_9/biaslayer_normalization_9/gammalayer_normalization_9/betadense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_582493

NoOpNoOp
Дa
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┐`
value╡`B▓` Bл`
°
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
п
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$axis
	%gamma
&beta*
О
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
е
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_random_generator* 
╚
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op*
п
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Caxis
	Dgamma
Ebeta*
О
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
е
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator* 
О
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
ж
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias*
ж
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias*
Z
0
1
%2
&3
:4
;5
D6
E7
_8
`9
g10
h11*
Z
0
1
%2
&3
:4
;5
D6
E7
_8
`9
g10
h11*
	
i0* 
░
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

otrace_0
ptrace_1* 

qtrace_0
rtrace_1* 
* 
Б
s
_variables
t_iterations
u_learning_rate
v_index_dict
w
_momentums
x_velocities
y_update_step_xla*

zserving_default* 

0
1*

0
1*
* 
У
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

%0
&1*

%0
&1*
* 
Ш
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_8/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_8/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

Оtrace_0* 

Пtrace_0* 
* 
* 
* 
Ц
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

Хtrace_0
Цtrace_1* 

Чtrace_0
Шtrace_1* 
* 

:0
;1*

:0
;1*
* 
Ш
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

D0
E1*

D0
E1*
* 
Ш
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_9/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_9/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 
* 
* 
* 
Ц
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

│trace_0
┤trace_1* 

╡trace_0
╢trace_1* 
* 
* 
* 
* 
Ц
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

╝trace_0* 

╜trace_0* 

_0
`1*

_0
`1*
	
i0* 
Ш
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

├trace_0* 

─trace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 
Ш
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

╩trace_0* 

╦trace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

╠trace_0* 
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

═0
╬1*
* 
* 
* 
* 
* 
* 
┌
t0
╧1
╨2
╤3
╥4
╙5
╘6
╒7
╓8
╫9
╪10
┘11
┌12
█13
▄14
▌15
▐16
▀17
р18
с19
т20
у21
ф22
х23
ц24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
╧0
╤1
╙2
╒3
╫4
┘5
█6
▌7
▀8
с9
у10
х11*
f
╨0
╥1
╘2
╓3
╪4
┌5
▄6
▐7
р8
т9
ф10
ц11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
i0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ч	variables
ш	keras_api

щtotal

ъcount*
M
ы	variables
ь	keras_api

эtotal

юcount
я
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_8/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_8/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_8/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_8/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/layer_normalization_8/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/layer_normalization_8/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/layer_normalization_8/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/layer_normalization_8/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_9/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_9/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_9/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_9/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/layer_normalization_9/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/layer_normalization_9/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/layer_normalization_9/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/layer_normalization_9/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_8/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_8/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_8/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_8/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_9/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_9/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_9/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_9/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

щ0
ъ1*

ч	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

э0
ю1*

ы	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ё	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biaslayer_normalization_8/gammalayer_normalization_8/betaconv2d_9/kernelconv2d_9/biaslayer_normalization_9/gammalayer_normalization_9/betadense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	iterationlearning_rateAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/bias"Adam/m/layer_normalization_8/gamma"Adam/v/layer_normalization_8/gamma!Adam/m/layer_normalization_8/beta!Adam/v/layer_normalization_8/betaAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/bias"Adam/m/layer_normalization_9/gamma"Adam/v/layer_normalization_9/gamma!Adam/m/layer_normalization_9/beta!Adam/v/layer_normalization_9/betaAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biasAdam/m/dense_9/kernelAdam/v/dense_9/kernelAdam/m/dense_9/biasAdam/v/dense_9/biastotal_1count_1totalcountConst*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_583098
ь	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biaslayer_normalization_8/gammalayer_normalization_8/betaconv2d_9/kernelconv2d_9/biaslayer_normalization_9/gammalayer_normalization_9/betadense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	iterationlearning_rateAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/bias"Adam/m/layer_normalization_8/gamma"Adam/v/layer_normalization_8/gamma!Adam/m/layer_normalization_8/beta!Adam/v/layer_normalization_8/betaAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/bias"Adam/m/layer_normalization_9/gamma"Adam/v/layer_normalization_9/gamma!Adam/m/layer_normalization_9/beta!Adam/v/layer_normalization_9/betaAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biasAdam/m/dense_9/kernelAdam/v/dense_9/kernelAdam/m/dense_9/biasAdam/v/dense_9/biastotal_1count_1totalcount*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_583233ЄЎ

д
Я
6__inference_layer_normalization_8_layer_call_fn_582528

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582158w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         b<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         b: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582524:&"
 
_user_specified_name582522:W S
/
_output_shapes
:         b
 
_user_specified_nameinputs
ю
m
4__inference_spatial_dropout2d_9_layer_call_fn_582724

inputs
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582073Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
n
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582623

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
е@
ж
H__inference_sequential_4_layer_call_and_return_conditional_losses_582293
input_5)
conv2d_8_582102:
conv2d_8_582104:*
layer_normalization_8_582159:*
layer_normalization_8_582161:)
conv2d_9_582177:(
conv2d_9_582179:(*
layer_normalization_9_582234:(*
layer_normalization_9_582236:("
dense_8_582265:
ША
dense_8_582267:	А!
dense_9_582281:	А
dense_9_582283:
identityИв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallвdense_8/StatefulPartitionedCallв-dense_8/kernel/Regularizer/Abs/ReadVariableOpвdense_9/StatefulPartitionedCallв-layer_normalization_8/StatefulPartitionedCallв-layer_normalization_9/StatefulPartitionedCallв+spatial_dropout2d_8/StatefulPartitionedCallв+spatial_dropout2d_9/StatefulPartitionedCall∙
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_5conv2d_8_582102conv2d_8_582104*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582101╧
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0layer_normalization_8_582159layer_normalization_8_582161*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582158■
max_pooling2d_8/PartitionedCallPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_581997И
+spatial_dropout2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582025ж
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_8/StatefulPartitionedCall:output:0conv2d_9_582177conv2d_9_582179*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582176╧
-layer_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0layer_normalization_9_582234layer_normalization_9_582236*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582233■
max_pooling2d_9/PartitionedCallPartitionedCall6layer_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582045╢
+spatial_dropout2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0,^spatial_dropout2d_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582073щ
flatten_4/PartitionedCallPartitionedCall4spatial_dropout2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_582246Й
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_582265dense_8_582267*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_582264О
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_582281dense_9_582283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_582280~
-dense_8/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_8_582265* 
_output_shapes
:
ША*
dtype0З
dense_8/kernel/Regularizer/AbsAbs5dense_8/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ШАq
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_8/kernel/Regularizer/SumSum"dense_8/kernel/Regularizer/Abs:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ъ
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ш
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall.^dense_8/kernel/Regularizer/Abs/ReadVariableOp ^dense_9/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall.^layer_normalization_9/StatefulPartitionedCall,^spatial_dropout2d_8/StatefulPartitionedCall,^spatial_dropout2d_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         d: : : : : : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2^
-dense_8/kernel/Regularizer/Abs/ReadVariableOp-dense_8/kernel/Regularizer/Abs/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall2^
-layer_normalization_9/StatefulPartitionedCall-layer_normalization_9/StatefulPartitionedCall2Z
+spatial_dropout2d_8/StatefulPartitionedCall+spatial_dropout2d_8/StatefulPartitionedCall2Z
+spatial_dropout2d_9/StatefulPartitionedCall+spatial_dropout2d_9/StatefulPartitionedCall:&"
 
_user_specified_name582283:&"
 
_user_specified_name582281:&
"
 
_user_specified_name582267:&	"
 
_user_specified_name582265:&"
 
_user_specified_name582236:&"
 
_user_specified_name582234:&"
 
_user_specified_name582179:&"
 
_user_specified_name582177:&"
 
_user_specified_name582161:&"
 
_user_specified_name582159:&"
 
_user_specified_name582104:&"
 
_user_specified_name582102:X T
/
_output_shapes
:         d
!
_user_specified_name	input_5
я
Ц
(__inference_dense_9_layer_call_fn_582803

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_582280o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582799:&"
 
_user_specified_name582797:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▒
¤
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582648

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:         /(h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:         /(S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         1
 
_user_specified_nameinputs
И*
Ї
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582233

inputs+
mul_4_readvariableop_resource:()
add_readvariableop_resource:(
identityИвadd/ReadVariableOpвmul_4/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Н
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         (L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:         M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:         H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB г
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:         (:         :         :         :         :*
data_formatNCHW*
epsilon%oГ:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:         /(n
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:(*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:         /(N
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         /(: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         /(
 
_user_specified_nameinputs
╣
¤
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582519

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b^
SoftmaxSoftmaxBiasAdd:output:0*
T0*/
_output_shapes
:         bh
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*/
_output_shapes
:         bS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         d
 
_user_specified_nameinputs
Г├
Л'
__inference__traced_save_583098
file_prefix@
&read_disablecopyonread_conv2d_8_kernel:4
&read_1_disablecopyonread_conv2d_8_bias:B
4read_2_disablecopyonread_layer_normalization_8_gamma:A
3read_3_disablecopyonread_layer_normalization_8_beta:B
(read_4_disablecopyonread_conv2d_9_kernel:(4
&read_5_disablecopyonread_conv2d_9_bias:(B
4read_6_disablecopyonread_layer_normalization_9_gamma:(A
3read_7_disablecopyonread_layer_normalization_9_beta:(;
'read_8_disablecopyonread_dense_8_kernel:
ША4
%read_9_disablecopyonread_dense_8_bias:	А;
(read_10_disablecopyonread_dense_9_kernel:	А4
&read_11_disablecopyonread_dense_9_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: J
0read_14_disablecopyonread_adam_m_conv2d_8_kernel:J
0read_15_disablecopyonread_adam_v_conv2d_8_kernel:<
.read_16_disablecopyonread_adam_m_conv2d_8_bias:<
.read_17_disablecopyonread_adam_v_conv2d_8_bias:J
<read_18_disablecopyonread_adam_m_layer_normalization_8_gamma:J
<read_19_disablecopyonread_adam_v_layer_normalization_8_gamma:I
;read_20_disablecopyonread_adam_m_layer_normalization_8_beta:I
;read_21_disablecopyonread_adam_v_layer_normalization_8_beta:J
0read_22_disablecopyonread_adam_m_conv2d_9_kernel:(J
0read_23_disablecopyonread_adam_v_conv2d_9_kernel:(<
.read_24_disablecopyonread_adam_m_conv2d_9_bias:(<
.read_25_disablecopyonread_adam_v_conv2d_9_bias:(J
<read_26_disablecopyonread_adam_m_layer_normalization_9_gamma:(J
<read_27_disablecopyonread_adam_v_layer_normalization_9_gamma:(I
;read_28_disablecopyonread_adam_m_layer_normalization_9_beta:(I
;read_29_disablecopyonread_adam_v_layer_normalization_9_beta:(C
/read_30_disablecopyonread_adam_m_dense_8_kernel:
ШАC
/read_31_disablecopyonread_adam_v_dense_8_kernel:
ША<
-read_32_disablecopyonread_adam_m_dense_8_bias:	А<
-read_33_disablecopyonread_adam_v_dense_8_bias:	АB
/read_34_disablecopyonread_adam_m_dense_9_kernel:	АB
/read_35_disablecopyonread_adam_v_dense_9_kernel:	А;
-read_36_disablecopyonread_adam_m_dense_9_bias:;
-read_37_disablecopyonread_adam_v_dense_9_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const
identity_85ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 к
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_8_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 в
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_8_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:И
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_layer_normalization_8_gamma"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_layer_normalization_8_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:З
Read_3/DisableCopyOnReadDisableCopyOnRead3read_3_disablecopyonread_layer_normalization_8_beta"/device:CPU:0*
_output_shapes
 п
Read_3/ReadVariableOpReadVariableOp3read_3_disablecopyonread_layer_normalization_8_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 ░
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_9_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:(z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_9_bias"/device:CPU:0*
_output_shapes
 в
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_9_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:(И
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_layer_normalization_9_gamma"/device:CPU:0*
_output_shapes
 ░
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_layer_normalization_9_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:(З
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_layer_normalization_9_beta"/device:CPU:0*
_output_shapes
 п
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_layer_normalization_9_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:({
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_8_kernel"/device:CPU:0*
_output_shapes
 й
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_8_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ША*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ШАg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ШАy
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_8_bias"/device:CPU:0*
_output_shapes
 в
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_8_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_dense_9_kernel"/device:CPU:0*
_output_shapes
 л
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_dense_9_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_dense_9_bias"/device:CPU:0*
_output_shapes
 д
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_dense_9_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_m_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 ║
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_m_conv2d_8_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:Е
Read_15/DisableCopyOnReadDisableCopyOnRead0read_15_disablecopyonread_adam_v_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 ║
Read_15/ReadVariableOpReadVariableOp0read_15_disablecopyonread_adam_v_conv2d_8_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:Г
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_m_conv2d_8_bias"/device:CPU:0*
_output_shapes
 м
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_m_conv2d_8_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_adam_v_conv2d_8_bias"/device:CPU:0*
_output_shapes
 м
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_adam_v_conv2d_8_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_18/DisableCopyOnReadDisableCopyOnRead<read_18_disablecopyonread_adam_m_layer_normalization_8_gamma"/device:CPU:0*
_output_shapes
 ║
Read_18/ReadVariableOpReadVariableOp<read_18_disablecopyonread_adam_m_layer_normalization_8_gamma^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_v_layer_normalization_8_gamma"/device:CPU:0*
_output_shapes
 ║
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_v_layer_normalization_8_gamma^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_20/DisableCopyOnReadDisableCopyOnRead;read_20_disablecopyonread_adam_m_layer_normalization_8_beta"/device:CPU:0*
_output_shapes
 ╣
Read_20/ReadVariableOpReadVariableOp;read_20_disablecopyonread_adam_m_layer_normalization_8_beta^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_21/DisableCopyOnReadDisableCopyOnRead;read_21_disablecopyonread_adam_v_layer_normalization_8_beta"/device:CPU:0*
_output_shapes
 ╣
Read_21/ReadVariableOpReadVariableOp;read_21_disablecopyonread_adam_v_layer_normalization_8_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 ║
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_conv2d_9_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:(Е
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 ║
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_conv2d_9_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:(Г
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_conv2d_9_bias"/device:CPU:0*
_output_shapes
 м
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_conv2d_9_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:(Г
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_conv2d_9_bias"/device:CPU:0*
_output_shapes
 м
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_conv2d_9_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:(С
Read_26/DisableCopyOnReadDisableCopyOnRead<read_26_disablecopyonread_adam_m_layer_normalization_9_gamma"/device:CPU:0*
_output_shapes
 ║
Read_26/ReadVariableOpReadVariableOp<read_26_disablecopyonread_adam_m_layer_normalization_9_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:(С
Read_27/DisableCopyOnReadDisableCopyOnRead<read_27_disablecopyonread_adam_v_layer_normalization_9_gamma"/device:CPU:0*
_output_shapes
 ║
Read_27/ReadVariableOpReadVariableOp<read_27_disablecopyonread_adam_v_layer_normalization_9_gamma^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:(Р
Read_28/DisableCopyOnReadDisableCopyOnRead;read_28_disablecopyonread_adam_m_layer_normalization_9_beta"/device:CPU:0*
_output_shapes
 ╣
Read_28/ReadVariableOpReadVariableOp;read_28_disablecopyonread_adam_m_layer_normalization_9_beta^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:(Р
Read_29/DisableCopyOnReadDisableCopyOnRead;read_29_disablecopyonread_adam_v_layer_normalization_9_beta"/device:CPU:0*
_output_shapes
 ╣
Read_29/ReadVariableOpReadVariableOp;read_29_disablecopyonread_adam_v_layer_normalization_9_beta^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:(Д
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_adam_m_dense_8_kernel"/device:CPU:0*
_output_shapes
 │
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_adam_m_dense_8_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ША*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ШАg
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ШАД
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_v_dense_8_kernel"/device:CPU:0*
_output_shapes
 │
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_v_dense_8_kernel^Read_31/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ША*
dtype0q
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ШАg
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ШАВ
Read_32/DisableCopyOnReadDisableCopyOnRead-read_32_disablecopyonread_adam_m_dense_8_bias"/device:CPU:0*
_output_shapes
 м
Read_32/ReadVariableOpReadVariableOp-read_32_disablecopyonread_adam_m_dense_8_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:АВ
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_v_dense_8_bias"/device:CPU:0*
_output_shapes
 м
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_v_dense_8_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_m_dense_9_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_m_dense_9_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	АД
Read_35/DisableCopyOnReadDisableCopyOnRead/read_35_disablecopyonread_adam_v_dense_9_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_35/ReadVariableOpReadVariableOp/read_35_disablecopyonread_adam_v_dense_9_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	АВ
Read_36/DisableCopyOnReadDisableCopyOnRead-read_36_disablecopyonread_adam_m_dense_9_bias"/device:CPU:0*
_output_shapes
 л
Read_36/ReadVariableOpReadVariableOp-read_36_disablecopyonread_adam_m_dense_9_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_37/DisableCopyOnReadDisableCopyOnRead-read_37_disablecopyonread_adam_v_dense_9_bias"/device:CPU:0*
_output_shapes
 л
Read_37/ReadVariableOpReadVariableOp-read_37_disablecopyonread_adam_v_dense_9_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: ▓
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*█
value╤B╬+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH├
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Щ	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: ╤
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_85Identity_85:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=+9

_output_shapes
: 

_user_specified_nameConst:%*!

_user_specified_namecount:%)!

_user_specified_nametotal:'(#
!
_user_specified_name	count_1:''#
!
_user_specified_name	total_1:3&/
-
_user_specified_nameAdam/v/dense_9/bias:3%/
-
_user_specified_nameAdam/m/dense_9/bias:5$1
/
_user_specified_nameAdam/v/dense_9/kernel:5#1
/
_user_specified_nameAdam/m/dense_9/kernel:3"/
-
_user_specified_nameAdam/v/dense_8/bias:3!/
-
_user_specified_nameAdam/m/dense_8/bias:5 1
/
_user_specified_nameAdam/v/dense_8/kernel:51
/
_user_specified_nameAdam/m/dense_8/kernel:A=
;
_user_specified_name#!Adam/v/layer_normalization_9/beta:A=
;
_user_specified_name#!Adam/m/layer_normalization_9/beta:B>
<
_user_specified_name$"Adam/v/layer_normalization_9/gamma:B>
<
_user_specified_name$"Adam/m/layer_normalization_9/gamma:40
.
_user_specified_nameAdam/v/conv2d_9/bias:40
.
_user_specified_nameAdam/m/conv2d_9/bias:62
0
_user_specified_nameAdam/v/conv2d_9/kernel:62
0
_user_specified_nameAdam/m/conv2d_9/kernel:A=
;
_user_specified_name#!Adam/v/layer_normalization_8/beta:A=
;
_user_specified_name#!Adam/m/layer_normalization_8/beta:B>
<
_user_specified_name$"Adam/v/layer_normalization_8/gamma:B>
<
_user_specified_name$"Adam/m/layer_normalization_8/gamma:40
.
_user_specified_nameAdam/v/conv2d_8/bias:40
.
_user_specified_nameAdam/m/conv2d_8/bias:62
0
_user_specified_nameAdam/v/conv2d_8/kernel:62
0
_user_specified_nameAdam/m/conv2d_8/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_9/bias:.*
(
_user_specified_namedense_9/kernel:,
(
&
_user_specified_namedense_8/bias:.	*
(
_user_specified_namedense_8/kernel::6
4
_user_specified_namelayer_normalization_9/beta:;7
5
_user_specified_namelayer_normalization_9/gamma:-)
'
_user_specified_nameconv2d_9/bias:/+
)
_user_specified_nameconv2d_9/kernel::6
4
_user_specified_namelayer_normalization_8/beta:;7
5
_user_specified_namelayer_normalization_8/gamma:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_8/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Р
л
__inference_loss_fn_0_582824J
6dense_8_kernel_regularizer_abs_readvariableop_resource:
ША
identityИв-dense_8/kernel/Regularizer/Abs/ReadVariableOpж
-dense_8/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp6dense_8_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
ША*
dtype0З
dense_8/kernel/Regularizer/AbsAbs5dense_8/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ШАq
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_8/kernel/Regularizer/SumSum"dense_8/kernel/Regularizer/Abs:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ъ
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_8/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: R
NoOpNoOp.^dense_8/kernel/Regularizer/Abs/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-dense_8/kernel/Regularizer/Abs/ReadVariableOp-dense_8/kernel/Regularizer/Abs/ReadVariableOp:( $
"
_user_specified_name
resource
ю
m
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582757

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И*
Ї
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582158

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identityИвadd/ReadVariableOpвmul_4/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Н
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:         M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:         H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB г
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:         :         :         :         :         :*
data_formatNCHW*
epsilon%oГ:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:         bn
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:         bj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:         bN
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         b: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         b
 
_user_specified_nameinputs
╫<
╩
H__inference_sequential_4_layer_call_and_return_conditional_losses_582338
input_5)
conv2d_8_582296:
conv2d_8_582298:*
layer_normalization_8_582301:*
layer_normalization_8_582303:)
conv2d_9_582308:(
conv2d_9_582310:(*
layer_normalization_9_582313:(*
layer_normalization_9_582315:("
dense_8_582321:
ША
dense_8_582323:	А!
dense_9_582326:	А
dense_9_582328:
identityИв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallвdense_8/StatefulPartitionedCallв-dense_8/kernel/Regularizer/Abs/ReadVariableOpвdense_9/StatefulPartitionedCallв-layer_normalization_8/StatefulPartitionedCallв-layer_normalization_9/StatefulPartitionedCall∙
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_5conv2d_8_582296conv2d_8_582298*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582101╧
-layer_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0layer_normalization_8_582301layer_normalization_8_582303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582158■
max_pooling2d_8/PartitionedCallPartitionedCall6layer_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_581997°
#spatial_dropout2d_8/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582030Ю
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_8/PartitionedCall:output:0conv2d_9_582308conv2d_9_582310*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582176╧
-layer_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0layer_normalization_9_582313layer_normalization_9_582315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582233■
max_pooling2d_9/PartitionedCallPartitionedCall6layer_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582045°
#spatial_dropout2d_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582078с
flatten_4/PartitionedCallPartitionedCall,spatial_dropout2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_582246Й
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_582321dense_8_582323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_582264О
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_582326dense_9_582328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_582280~
-dense_8/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_8_582321* 
_output_shapes
:
ША*
dtype0З
dense_8/kernel/Regularizer/AbsAbs5dense_8/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ШАq
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_8/kernel/Regularizer/SumSum"dense_8/kernel/Regularizer/Abs:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ъ
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╝
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall.^dense_8/kernel/Regularizer/Abs/ReadVariableOp ^dense_9/StatefulPartitionedCall.^layer_normalization_8/StatefulPartitionedCall.^layer_normalization_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         d: : : : : : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2^
-dense_8/kernel/Regularizer/Abs/ReadVariableOp-dense_8/kernel/Regularizer/Abs/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-layer_normalization_8/StatefulPartitionedCall-layer_normalization_8/StatefulPartitionedCall2^
-layer_normalization_9/StatefulPartitionedCall-layer_normalization_9/StatefulPartitionedCall:&"
 
_user_specified_name582328:&"
 
_user_specified_name582326:&
"
 
_user_specified_name582323:&	"
 
_user_specified_name582321:&"
 
_user_specified_name582315:&"
 
_user_specified_name582313:&"
 
_user_specified_name582310:&"
 
_user_specified_name582308:&"
 
_user_specified_name582303:&"
 
_user_specified_name582301:&"
 
_user_specified_name582298:&"
 
_user_specified_name582296:X T
/
_output_shapes
:         d
!
_user_specified_name	input_5
╟
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_582246

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    Ш  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ШY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         (:W S
/
_output_shapes
:         (
 
_user_specified_nameinputs
м─
с
"__inference__traced_restore_583233
file_prefix:
 assignvariableop_conv2d_8_kernel:.
 assignvariableop_1_conv2d_8_bias:<
.assignvariableop_2_layer_normalization_8_gamma:;
-assignvariableop_3_layer_normalization_8_beta:<
"assignvariableop_4_conv2d_9_kernel:(.
 assignvariableop_5_conv2d_9_bias:(<
.assignvariableop_6_layer_normalization_9_gamma:(;
-assignvariableop_7_layer_normalization_9_beta:(5
!assignvariableop_8_dense_8_kernel:
ША.
assignvariableop_9_dense_8_bias:	А5
"assignvariableop_10_dense_9_kernel:	А.
 assignvariableop_11_dense_9_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: D
*assignvariableop_14_adam_m_conv2d_8_kernel:D
*assignvariableop_15_adam_v_conv2d_8_kernel:6
(assignvariableop_16_adam_m_conv2d_8_bias:6
(assignvariableop_17_adam_v_conv2d_8_bias:D
6assignvariableop_18_adam_m_layer_normalization_8_gamma:D
6assignvariableop_19_adam_v_layer_normalization_8_gamma:C
5assignvariableop_20_adam_m_layer_normalization_8_beta:C
5assignvariableop_21_adam_v_layer_normalization_8_beta:D
*assignvariableop_22_adam_m_conv2d_9_kernel:(D
*assignvariableop_23_adam_v_conv2d_9_kernel:(6
(assignvariableop_24_adam_m_conv2d_9_bias:(6
(assignvariableop_25_adam_v_conv2d_9_bias:(D
6assignvariableop_26_adam_m_layer_normalization_9_gamma:(D
6assignvariableop_27_adam_v_layer_normalization_9_gamma:(C
5assignvariableop_28_adam_m_layer_normalization_9_beta:(C
5assignvariableop_29_adam_v_layer_normalization_9_beta:(=
)assignvariableop_30_adam_m_dense_8_kernel:
ША=
)assignvariableop_31_adam_v_dense_8_kernel:
ША6
'assignvariableop_32_adam_m_dense_8_bias:	А6
'assignvariableop_33_adam_v_dense_8_bias:	А<
)assignvariableop_34_adam_m_dense_9_kernel:	А<
)assignvariableop_35_adam_v_dense_9_kernel:	А5
'assignvariableop_36_adam_m_dense_9_bias:5
'assignvariableop_37_adam_v_dense_9_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╡
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*█
value╤B╬+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╞
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B °
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*┬
_output_shapesп
м:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_2AssignVariableOp.assignvariableop_2_layer_normalization_8_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_3AssignVariableOp-assignvariableop_3_layer_normalization_8_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_9_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_9_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_6AssignVariableOp.assignvariableop_6_layer_normalization_9_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_7AssignVariableOp-assignvariableop_7_layer_normalization_9_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_8_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_8_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_9_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_9_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_m_conv2d_8_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_v_conv2d_8_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_conv2d_8_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_conv2d_8_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_m_layer_normalization_8_gammaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_v_layer_normalization_8_gammaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_20AssignVariableOp5assignvariableop_20_adam_m_layer_normalization_8_betaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_v_layer_normalization_8_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_9_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_9_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_conv2d_9_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_conv2d_9_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_m_layer_normalization_9_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_v_layer_normalization_9_gammaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_28AssignVariableOp5assignvariableop_28_adam_m_layer_normalization_9_betaIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_v_layer_normalization_9_betaIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_dense_8_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_dense_8_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_m_dense_8_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_v_dense_8_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_m_dense_9_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_v_dense_9_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_m_dense_9_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_v_dense_9_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ы
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: ┤
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%*!

_user_specified_namecount:%)!

_user_specified_nametotal:'(#
!
_user_specified_name	count_1:''#
!
_user_specified_name	total_1:3&/
-
_user_specified_nameAdam/v/dense_9/bias:3%/
-
_user_specified_nameAdam/m/dense_9/bias:5$1
/
_user_specified_nameAdam/v/dense_9/kernel:5#1
/
_user_specified_nameAdam/m/dense_9/kernel:3"/
-
_user_specified_nameAdam/v/dense_8/bias:3!/
-
_user_specified_nameAdam/m/dense_8/bias:5 1
/
_user_specified_nameAdam/v/dense_8/kernel:51
/
_user_specified_nameAdam/m/dense_8/kernel:A=
;
_user_specified_name#!Adam/v/layer_normalization_9/beta:A=
;
_user_specified_name#!Adam/m/layer_normalization_9/beta:B>
<
_user_specified_name$"Adam/v/layer_normalization_9/gamma:B>
<
_user_specified_name$"Adam/m/layer_normalization_9/gamma:40
.
_user_specified_nameAdam/v/conv2d_9/bias:40
.
_user_specified_nameAdam/m/conv2d_9/bias:62
0
_user_specified_nameAdam/v/conv2d_9/kernel:62
0
_user_specified_nameAdam/m/conv2d_9/kernel:A=
;
_user_specified_name#!Adam/v/layer_normalization_8/beta:A=
;
_user_specified_name#!Adam/m/layer_normalization_8/beta:B>
<
_user_specified_name$"Adam/v/layer_normalization_8/gamma:B>
<
_user_specified_name$"Adam/m/layer_normalization_8/gamma:40
.
_user_specified_nameAdam/v/conv2d_8/bias:40
.
_user_specified_nameAdam/m/conv2d_8/bias:62
0
_user_specified_nameAdam/v/conv2d_8/kernel:62
0
_user_specified_nameAdam/m/conv2d_8/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_9/bias:.*
(
_user_specified_namedense_9/kernel:,
(
&
_user_specified_namedense_8/bias:.	*
(
_user_specified_namedense_8/kernel::6
4
_user_specified_namelayer_normalization_9/beta:;7
5
_user_specified_namelayer_normalization_9/gamma:-)
'
_user_specified_nameconv2d_9/bias:/+
)
_user_specified_nameconv2d_9/kernel::6
4
_user_specified_namelayer_normalization_8/beta:;7
5
_user_specified_namelayer_normalization_8/gamma:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_8/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ц
Ю
)__inference_conv2d_8_layer_call_fn_582508

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582101w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         b<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582504:&"
 
_user_specified_name582502:W S
/
_output_shapes
:         d
 
_user_specified_nameinputs
╟
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_582768

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    Ш  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ШY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         (:W S
/
_output_shapes
:         (
 
_user_specified_nameinputs
└
P
4__inference_spatial_dropout2d_8_layer_call_fn_582600

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582030Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦
╢
-__inference_sequential_4_layer_call_fn_582367
input_5!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:(
	unknown_4:(
	unknown_5:(
	unknown_6:(
	unknown_7:
ША
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_582293o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582363:&"
 
_user_specified_name582361:&
"
 
_user_specified_name582359:&	"
 
_user_specified_name582357:&"
 
_user_specified_name582355:&"
 
_user_specified_name582353:&"
 
_user_specified_name582351:&"
 
_user_specified_name582349:&"
 
_user_specified_name582347:&"
 
_user_specified_name582345:&"
 
_user_specified_name582343:&"
 
_user_specified_name582341:X T
/
_output_shapes
:         d
!
_user_specified_name	input_5
И*
Ї
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582580

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identityИвadd/ReadVariableOpвmul_4/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Н
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:         M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:         H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB г
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:         :         :         :         :         :*
data_formatNCHW*
epsilon%oГ:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:         bn
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:         bj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:         bN
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         b: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         b
 
_user_specified_nameinputs
╛
з
C__inference_dense_8_layer_call_and_return_conditional_losses_582794

inputs2
matmul_readvariableop_resource:
ША.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв-dense_8/kernel/Regularizer/Abs/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ША*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АO
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:         АО
-dense_8/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ША*
dtype0З
dense_8/kernel/Regularizer/AbsAbs5dense_8/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ШАq
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_8/kernel/Regularizer/SumSum"dense_8/kernel/Regularizer/Abs:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ъ
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:         АГ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_8/kernel/Regularizer/Abs/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Ш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_8/kernel/Regularizer/Abs/ReadVariableOp-dense_8/kernel/Regularizer/Abs/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         Ш
 
_user_specified_nameinputs
╦
╢
-__inference_sequential_4_layer_call_fn_582396
input_5!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:(
	unknown_4:(
	unknown_5:(
	unknown_6:(
	unknown_7:
ША
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_582338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582392:&"
 
_user_specified_name582390:&
"
 
_user_specified_name582388:&	"
 
_user_specified_name582386:&"
 
_user_specified_name582384:&"
 
_user_specified_name582382:&"
 
_user_specified_name582380:&"
 
_user_specified_name582378:&"
 
_user_specified_name582376:&"
 
_user_specified_name582374:&"
 
_user_specified_name582372:&"
 
_user_specified_name582370:X T
/
_output_shapes
:         d
!
_user_specified_name	input_5
У
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582045

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц
Ю
)__inference_conv2d_9_layer_call_fn_582637

inputs!
unknown:(
	unknown_0:(
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582176w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         /(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         1: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582633:&"
 
_user_specified_name582631:W S
/
_output_shapes
:         1
 
_user_specified_nameinputs
╙

ї
C__inference_dense_9_layer_call_and_return_conditional_losses_582280

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_582590

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╛
з
C__inference_dense_8_layer_call_and_return_conditional_losses_582264

inputs2
matmul_readvariableop_resource:
ША.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв-dense_8/kernel/Regularizer/Abs/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ША*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АO
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:         АО
-dense_8/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ША*
dtype0З
dense_8/kernel/Regularizer/AbsAbs5dense_8/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ШАq
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_8/kernel/Regularizer/SumSum"dense_8/kernel/Regularizer/Abs:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ъ
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:         АГ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_8/kernel/Regularizer/Abs/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Ш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_8/kernel/Regularizer/Abs/ReadVariableOp-dense_8/kernel/Regularizer/Abs/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         Ш
 
_user_specified_nameinputs
ю
m
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582078

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582719

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
n
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582752

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└
P
4__inference_spatial_dropout2d_9_layer_call_fn_582729

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582078Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▒
F
*__inference_flatten_4_layer_call_fn_582762

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_582246a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         (:W S
/
_output_shapes
:         (
 
_user_specified_nameinputs
є
Ш
(__inference_dense_8_layer_call_fn_582777

inputs
unknown:
ША
	unknown_0:	А
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_582264p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Ш: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582773:&"
 
_user_specified_name582771:P L
(
_output_shapes
:         Ш
 
_user_specified_nameinputs
Ы
н
$__inference_signature_wrapper_582493
input_5!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:(
	unknown_4:(
	unknown_5:(
	unknown_6:(
	unknown_7:
ША
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_581992o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582489:&"
 
_user_specified_name582487:&
"
 
_user_specified_name582485:&	"
 
_user_specified_name582483:&"
 
_user_specified_name582481:&"
 
_user_specified_name582479:&"
 
_user_specified_name582477:&"
 
_user_specified_name582475:&"
 
_user_specified_name582473:&"
 
_user_specified_name582471:&"
 
_user_specified_name582469:&"
 
_user_specified_name582467:X T
/
_output_shapes
:         d
!
_user_specified_name	input_5
Т
n
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582073

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И*
Ї
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582709

inputs+
mul_4_readvariableop_resource:()
add_readvariableop_resource:(
identityИвadd/ReadVariableOpвmul_4/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Н
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         (L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:         M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:         H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB г
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:         (:         :         :         :         :*
data_formatNCHW*
epsilon%oГ:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:         /(n
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:(*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:         /(N
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         /(: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         /(
 
_user_specified_nameinputs
░╜
Х
!__inference__wrapped_model_581992
input_5N
4sequential_4_conv2d_8_conv2d_readvariableop_resource:C
5sequential_4_conv2d_8_biasadd_readvariableop_resource:N
@sequential_4_layer_normalization_8_mul_4_readvariableop_resource:L
>sequential_4_layer_normalization_8_add_readvariableop_resource:N
4sequential_4_conv2d_9_conv2d_readvariableop_resource:(C
5sequential_4_conv2d_9_biasadd_readvariableop_resource:(N
@sequential_4_layer_normalization_9_mul_4_readvariableop_resource:(L
>sequential_4_layer_normalization_9_add_readvariableop_resource:(G
3sequential_4_dense_8_matmul_readvariableop_resource:
ШАC
4sequential_4_dense_8_biasadd_readvariableop_resource:	АF
3sequential_4_dense_9_matmul_readvariableop_resource:	АB
4sequential_4_dense_9_biasadd_readvariableop_resource:
identityИв,sequential_4/conv2d_8/BiasAdd/ReadVariableOpв+sequential_4/conv2d_8/Conv2D/ReadVariableOpв,sequential_4/conv2d_9/BiasAdd/ReadVariableOpв+sequential_4/conv2d_9/Conv2D/ReadVariableOpв+sequential_4/dense_8/BiasAdd/ReadVariableOpв*sequential_4/dense_8/MatMul/ReadVariableOpв+sequential_4/dense_9/BiasAdd/ReadVariableOpв*sequential_4/dense_9/MatMul/ReadVariableOpв5sequential_4/layer_normalization_8/add/ReadVariableOpв7sequential_4/layer_normalization_8/mul_4/ReadVariableOpв5sequential_4/layer_normalization_9/add/ReadVariableOpв7sequential_4/layer_normalization_9/mul_4/ReadVariableOpи
+sequential_4/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╟
sequential_4/conv2d_8/Conv2DConv2Dinput_53sequential_4/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b*
paddingVALID*
strides
Ю
,sequential_4/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┐
sequential_4/conv2d_8/BiasAddBiasAdd%sequential_4/conv2d_8/Conv2D:output:04sequential_4/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         bК
sequential_4/conv2d_8/SoftmaxSoftmax&sequential_4/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         bН
(sequential_4/layer_normalization_8/ShapeShape'sequential_4/conv2d_8/Softmax:softmax:0*
T0*
_output_shapes
::э╧А
6sequential_4/layer_normalization_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8sequential_4/layer_normalization_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8sequential_4/layer_normalization_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0sequential_4/layer_normalization_8/strided_sliceStridedSlice1sequential_4/layer_normalization_8/Shape:output:0?sequential_4/layer_normalization_8/strided_slice/stack:output:0Asequential_4/layer_normalization_8/strided_slice/stack_1:output:0Asequential_4/layer_normalization_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_4/layer_normalization_8/mul/xConst*
_output_shapes
: *
dtype0*
value	B :╝
&sequential_4/layer_normalization_8/mulMul1sequential_4/layer_normalization_8/mul/x:output:09sequential_4/layer_normalization_8/strided_slice:output:0*
T0*
_output_shapes
: В
8sequential_4/layer_normalization_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2sequential_4/layer_normalization_8/strided_slice_1StridedSlice1sequential_4/layer_normalization_8/Shape:output:0Asequential_4/layer_normalization_8/strided_slice_1/stack:output:0Csequential_4/layer_normalization_8/strided_slice_1/stack_1:output:0Csequential_4/layer_normalization_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╣
(sequential_4/layer_normalization_8/mul_1Mul*sequential_4/layer_normalization_8/mul:z:0;sequential_4/layer_normalization_8/strided_slice_1:output:0*
T0*
_output_shapes
: В
8sequential_4/layer_normalization_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2sequential_4/layer_normalization_8/strided_slice_2StridedSlice1sequential_4/layer_normalization_8/Shape:output:0Asequential_4/layer_normalization_8/strided_slice_2/stack:output:0Csequential_4/layer_normalization_8/strided_slice_2/stack_1:output:0Csequential_4/layer_normalization_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╗
(sequential_4/layer_normalization_8/mul_2Mul,sequential_4/layer_normalization_8/mul_1:z:0;sequential_4/layer_normalization_8/strided_slice_2:output:0*
T0*
_output_shapes
: В
8sequential_4/layer_normalization_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2sequential_4/layer_normalization_8/strided_slice_3StridedSlice1sequential_4/layer_normalization_8/Shape:output:0Asequential_4/layer_normalization_8/strided_slice_3/stack:output:0Csequential_4/layer_normalization_8/strided_slice_3/stack_1:output:0Csequential_4/layer_normalization_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_4/layer_normalization_8/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :┬
(sequential_4/layer_normalization_8/mul_3Mul3sequential_4/layer_normalization_8/mul_3/x:output:0;sequential_4/layer_normalization_8/strided_slice_3:output:0*
T0*
_output_shapes
: t
2sequential_4/layer_normalization_8/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :t
2sequential_4/layer_normalization_8/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╝
0sequential_4/layer_normalization_8/Reshape/shapePack;sequential_4/layer_normalization_8/Reshape/shape/0:output:0,sequential_4/layer_normalization_8/mul_2:z:0,sequential_4/layer_normalization_8/mul_3:z:0;sequential_4/layer_normalization_8/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:╙
*sequential_4/layer_normalization_8/ReshapeReshape'sequential_4/conv2d_8/Softmax:softmax:09sequential_4/layer_normalization_8/Reshape/shape:output:0*
T0*/
_output_shapes
:         Т
.sequential_4/layer_normalization_8/ones/packedPack,sequential_4/layer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:r
-sequential_4/layer_normalization_8/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╬
'sequential_4/layer_normalization_8/onesFill7sequential_4/layer_normalization_8/ones/packed:output:06sequential_4/layer_normalization_8/ones/Const:output:0*
T0*#
_output_shapes
:         У
/sequential_4/layer_normalization_8/zeros/packedPack,sequential_4/layer_normalization_8/mul_2:z:0*
N*
T0*
_output_shapes
:s
.sequential_4/layer_normalization_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╤
(sequential_4/layer_normalization_8/zerosFill8sequential_4/layer_normalization_8/zeros/packed:output:07sequential_4/layer_normalization_8/zeros/Const:output:0*
T0*#
_output_shapes
:         k
(sequential_4/layer_normalization_8/ConstConst*
_output_shapes
: *
dtype0*
valueB m
*sequential_4/layer_normalization_8/Const_1Const*
_output_shapes
: *
dtype0*
valueB ї
3sequential_4/layer_normalization_8/FusedBatchNormV3FusedBatchNormV33sequential_4/layer_normalization_8/Reshape:output:00sequential_4/layer_normalization_8/ones:output:01sequential_4/layer_normalization_8/zeros:output:01sequential_4/layer_normalization_8/Const:output:03sequential_4/layer_normalization_8/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:         :         :         :         :         :*
data_formatNCHW*
epsilon%oГ:▌
,sequential_4/layer_normalization_8/Reshape_1Reshape7sequential_4/layer_normalization_8/FusedBatchNormV3:y:01sequential_4/layer_normalization_8/Shape:output:0*
T0*/
_output_shapes
:         b┤
7sequential_4/layer_normalization_8/mul_4/ReadVariableOpReadVariableOp@sequential_4_layer_normalization_8_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0с
(sequential_4/layer_normalization_8/mul_4Mul5sequential_4/layer_normalization_8/Reshape_1:output:0?sequential_4/layer_normalization_8/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b░
5sequential_4/layer_normalization_8/add/ReadVariableOpReadVariableOp>sequential_4_layer_normalization_8_add_readvariableop_resource*
_output_shapes
:*
dtype0╓
&sequential_4/layer_normalization_8/addAddV2,sequential_4/layer_normalization_8/mul_4:z:0=sequential_4/layer_normalization_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b╚
$sequential_4/max_pooling2d_8/MaxPoolMaxPool*sequential_4/layer_normalization_8/add:z:0*/
_output_shapes
:         1*
ksize
*
paddingVALID*
strides
Ю
)sequential_4/spatial_dropout2d_8/IdentityIdentity-sequential_4/max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:         1и
+sequential_4/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Є
sequential_4/conv2d_9/Conv2DConv2D2sequential_4/spatial_dropout2d_8/Identity:output:03sequential_4/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(*
paddingVALID*
strides
Ю
,sequential_4/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0┐
sequential_4/conv2d_9/BiasAddBiasAdd%sequential_4/conv2d_9/Conv2D:output:04sequential_4/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(В
sequential_4/conv2d_9/EluElu&sequential_4/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:         /(Н
(sequential_4/layer_normalization_9/ShapeShape'sequential_4/conv2d_9/Elu:activations:0*
T0*
_output_shapes
::э╧А
6sequential_4/layer_normalization_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8sequential_4/layer_normalization_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8sequential_4/layer_normalization_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0sequential_4/layer_normalization_9/strided_sliceStridedSlice1sequential_4/layer_normalization_9/Shape:output:0?sequential_4/layer_normalization_9/strided_slice/stack:output:0Asequential_4/layer_normalization_9/strided_slice/stack_1:output:0Asequential_4/layer_normalization_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_4/layer_normalization_9/mul/xConst*
_output_shapes
: *
dtype0*
value	B :╝
&sequential_4/layer_normalization_9/mulMul1sequential_4/layer_normalization_9/mul/x:output:09sequential_4/layer_normalization_9/strided_slice:output:0*
T0*
_output_shapes
: В
8sequential_4/layer_normalization_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2sequential_4/layer_normalization_9/strided_slice_1StridedSlice1sequential_4/layer_normalization_9/Shape:output:0Asequential_4/layer_normalization_9/strided_slice_1/stack:output:0Csequential_4/layer_normalization_9/strided_slice_1/stack_1:output:0Csequential_4/layer_normalization_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╣
(sequential_4/layer_normalization_9/mul_1Mul*sequential_4/layer_normalization_9/mul:z:0;sequential_4/layer_normalization_9/strided_slice_1:output:0*
T0*
_output_shapes
: В
8sequential_4/layer_normalization_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2sequential_4/layer_normalization_9/strided_slice_2StridedSlice1sequential_4/layer_normalization_9/Shape:output:0Asequential_4/layer_normalization_9/strided_slice_2/stack:output:0Csequential_4/layer_normalization_9/strided_slice_2/stack_1:output:0Csequential_4/layer_normalization_9/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╗
(sequential_4/layer_normalization_9/mul_2Mul,sequential_4/layer_normalization_9/mul_1:z:0;sequential_4/layer_normalization_9/strided_slice_2:output:0*
T0*
_output_shapes
: В
8sequential_4/layer_normalization_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_4/layer_normalization_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2sequential_4/layer_normalization_9/strided_slice_3StridedSlice1sequential_4/layer_normalization_9/Shape:output:0Asequential_4/layer_normalization_9/strided_slice_3/stack:output:0Csequential_4/layer_normalization_9/strided_slice_3/stack_1:output:0Csequential_4/layer_normalization_9/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_4/layer_normalization_9/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :┬
(sequential_4/layer_normalization_9/mul_3Mul3sequential_4/layer_normalization_9/mul_3/x:output:0;sequential_4/layer_normalization_9/strided_slice_3:output:0*
T0*
_output_shapes
: t
2sequential_4/layer_normalization_9/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :t
2sequential_4/layer_normalization_9/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╝
0sequential_4/layer_normalization_9/Reshape/shapePack;sequential_4/layer_normalization_9/Reshape/shape/0:output:0,sequential_4/layer_normalization_9/mul_2:z:0,sequential_4/layer_normalization_9/mul_3:z:0;sequential_4/layer_normalization_9/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:╙
*sequential_4/layer_normalization_9/ReshapeReshape'sequential_4/conv2d_9/Elu:activations:09sequential_4/layer_normalization_9/Reshape/shape:output:0*
T0*/
_output_shapes
:         (Т
.sequential_4/layer_normalization_9/ones/packedPack,sequential_4/layer_normalization_9/mul_2:z:0*
N*
T0*
_output_shapes
:r
-sequential_4/layer_normalization_9/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╬
'sequential_4/layer_normalization_9/onesFill7sequential_4/layer_normalization_9/ones/packed:output:06sequential_4/layer_normalization_9/ones/Const:output:0*
T0*#
_output_shapes
:         У
/sequential_4/layer_normalization_9/zeros/packedPack,sequential_4/layer_normalization_9/mul_2:z:0*
N*
T0*
_output_shapes
:s
.sequential_4/layer_normalization_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╤
(sequential_4/layer_normalization_9/zerosFill8sequential_4/layer_normalization_9/zeros/packed:output:07sequential_4/layer_normalization_9/zeros/Const:output:0*
T0*#
_output_shapes
:         k
(sequential_4/layer_normalization_9/ConstConst*
_output_shapes
: *
dtype0*
valueB m
*sequential_4/layer_normalization_9/Const_1Const*
_output_shapes
: *
dtype0*
valueB ї
3sequential_4/layer_normalization_9/FusedBatchNormV3FusedBatchNormV33sequential_4/layer_normalization_9/Reshape:output:00sequential_4/layer_normalization_9/ones:output:01sequential_4/layer_normalization_9/zeros:output:01sequential_4/layer_normalization_9/Const:output:03sequential_4/layer_normalization_9/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:         (:         :         :         :         :*
data_formatNCHW*
epsilon%oГ:▌
,sequential_4/layer_normalization_9/Reshape_1Reshape7sequential_4/layer_normalization_9/FusedBatchNormV3:y:01sequential_4/layer_normalization_9/Shape:output:0*
T0*/
_output_shapes
:         /(┤
7sequential_4/layer_normalization_9/mul_4/ReadVariableOpReadVariableOp@sequential_4_layer_normalization_9_mul_4_readvariableop_resource*
_output_shapes
:(*
dtype0с
(sequential_4/layer_normalization_9/mul_4Mul5sequential_4/layer_normalization_9/Reshape_1:output:0?sequential_4/layer_normalization_9/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(░
5sequential_4/layer_normalization_9/add/ReadVariableOpReadVariableOp>sequential_4_layer_normalization_9_add_readvariableop_resource*
_output_shapes
:(*
dtype0╓
&sequential_4/layer_normalization_9/addAddV2,sequential_4/layer_normalization_9/mul_4:z:0=sequential_4/layer_normalization_9/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(╚
$sequential_4/max_pooling2d_9/MaxPoolMaxPool*sequential_4/layer_normalization_9/add:z:0*/
_output_shapes
:         (*
ksize
*
paddingVALID*
strides
Ю
)sequential_4/spatial_dropout2d_9/IdentityIdentity-sequential_4/max_pooling2d_9/MaxPool:output:0*
T0*/
_output_shapes
:         (m
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"    Ш  ╖
sequential_4/flatten_4/ReshapeReshape2sequential_4/spatial_dropout2d_9/Identity:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:         Ша
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
ША*
dtype0╡
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аy
sequential_4/dense_8/EluElu%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0│
sequential_4/dense_9/MatMulMatMul&sequential_4/dense_8/Elu:activations:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
sequential_4/dense_9/SoftmaxSoftmax%sequential_4/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_4/dense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Ў
NoOpNoOp-^sequential_4/conv2d_8/BiasAdd/ReadVariableOp,^sequential_4/conv2d_8/Conv2D/ReadVariableOp-^sequential_4/conv2d_9/BiasAdd/ReadVariableOp,^sequential_4/conv2d_9/Conv2D/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp6^sequential_4/layer_normalization_8/add/ReadVariableOp8^sequential_4/layer_normalization_8/mul_4/ReadVariableOp6^sequential_4/layer_normalization_9/add/ReadVariableOp8^sequential_4/layer_normalization_9/mul_4/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         d: : : : : : : : : : : : 2\
,sequential_4/conv2d_8/BiasAdd/ReadVariableOp,sequential_4/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_8/Conv2D/ReadVariableOp+sequential_4/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_4/conv2d_9/BiasAdd/ReadVariableOp,sequential_4/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_9/Conv2D/ReadVariableOp+sequential_4/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp2n
5sequential_4/layer_normalization_8/add/ReadVariableOp5sequential_4/layer_normalization_8/add/ReadVariableOp2r
7sequential_4/layer_normalization_8/mul_4/ReadVariableOp7sequential_4/layer_normalization_8/mul_4/ReadVariableOp2n
5sequential_4/layer_normalization_9/add/ReadVariableOp5sequential_4/layer_normalization_9/add/ReadVariableOp2r
7sequential_4/layer_normalization_9/mul_4/ReadVariableOp7sequential_4/layer_normalization_9/mul_4/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:         d
!
_user_specified_name	input_5
У
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_581997

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
m
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582628

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
m
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582030

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▒
¤
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582176

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /(V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:         /(h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:         /(S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         1
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_9_layer_call_fn_582714

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582045Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
m
4__inference_spatial_dropout2d_8_layer_call_fn_582595

inputs
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582025Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╙

ї
C__inference_dense_9_layer_call_and_return_conditional_losses_582814

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д
Я
6__inference_layer_normalization_9_layer_call_fn_582657

inputs
unknown:(
	unknown_0:(
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582233w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         /(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         /(: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name582653:&"
 
_user_specified_name582651:W S
/
_output_shapes
:         /(
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_8_layer_call_fn_582585

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_581997Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
n
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582025

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
¤
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582101

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         b^
SoftmaxSoftmaxBiasAdd:output:0*
T0*/
_output_shapes
:         bh
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*/
_output_shapes
:         bS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         d
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▓
serving_defaultЮ
C
input_58
serving_default_input_5:0         d;
dense_90
StatefulPartitionedCall:0         tensorflow/serving/predict:ШО
Т
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
─
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$axis
	%gamma
&beta"
_tf_keras_layer
е
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_random_generator"
_tf_keras_layer
▌
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
─
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Caxis
	Dgamma
Ebeta"
_tf_keras_layer
е
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator"
_tf_keras_layer
е
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias"
_tf_keras_layer
╗
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias"
_tf_keras_layer
v
0
1
%2
&3
:4
;5
D6
E7
_8
`9
g10
h11"
trackable_list_wrapper
v
0
1
%2
&3
:4
;5
D6
E7
_8
`9
g10
h11"
trackable_list_wrapper
'
i0"
trackable_list_wrapper
╩
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
═
otrace_0
ptrace_12Ц
-__inference_sequential_4_layer_call_fn_582367
-__inference_sequential_4_layer_call_fn_582396╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zotrace_0zptrace_1
Г
qtrace_0
rtrace_12╠
H__inference_sequential_4_layer_call_and_return_conditional_losses_582293
H__inference_sequential_4_layer_call_and_return_conditional_losses_582338╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zqtrace_0zrtrace_1
╠B╔
!__inference__wrapped_model_581992input_5"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
s
_variables
t_iterations
u_learning_rate
v_index_dict
w
_momentums
x_velocities
y_update_step_xla"
experimentalOptimizer
,
zserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
Аtrace_02╞
)__inference_conv2d_8_layer_call_fn_582508Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
А
Бtrace_02с
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582519Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
):'2conv2d_8/kernel
:2conv2d_8/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Є
Зtrace_02╙
6__inference_layer_normalization_8_layer_call_fn_582528Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0
Н
Иtrace_02ю
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582580Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0
 "
trackable_list_wrapper
):'2layer_normalization_8/gamma
(:&2layer_normalization_8/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ь
Оtrace_02═
0__inference_max_pooling2d_8_layer_call_fn_582585Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
З
Пtrace_02ш
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_582590Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
╙
Хtrace_0
Цtrace_12Ш
4__inference_spatial_dropout2d_8_layer_call_fn_582595
4__inference_spatial_dropout2d_8_layer_call_fn_582600й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0zЦtrace_1
Й
Чtrace_0
Шtrace_12╬
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582623
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582628й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0zШtrace_1
"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
х
Юtrace_02╞
)__inference_conv2d_9_layer_call_fn_582637Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЮtrace_0
А
Яtrace_02с
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582648Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЯtrace_0
):'(2conv2d_9/kernel
:(2conv2d_9/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
Є
еtrace_02╙
6__inference_layer_normalization_9_layer_call_fn_582657Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zеtrace_0
Н
жtrace_02ю
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582709Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zжtrace_0
 "
trackable_list_wrapper
):'(2layer_normalization_9/gamma
(:&(2layer_normalization_9/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
ь
мtrace_02═
0__inference_max_pooling2d_9_layer_call_fn_582714Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0
З
нtrace_02ш
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582719Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
╙
│trace_0
┤trace_12Ш
4__inference_spatial_dropout2d_9_layer_call_fn_582724
4__inference_spatial_dropout2d_9_layer_call_fn_582729й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z│trace_0z┤trace_1
Й
╡trace_0
╢trace_12╬
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582752
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582757й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╡trace_0z╢trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
ц
╝trace_02╟
*__inference_flatten_4_layer_call_fn_582762Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0
Б
╜trace_02т
E__inference_flatten_4_layer_call_and_return_conditional_losses_582768Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
'
i0"
trackable_list_wrapper
▓
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
ф
├trace_02┼
(__inference_dense_8_layer_call_fn_582777Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z├trace_0
 
─trace_02р
C__inference_dense_8_layer_call_and_return_conditional_losses_582794Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z─trace_0
": 
ША2dense_8/kernel
:А2dense_8/bias
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
ф
╩trace_02┼
(__inference_dense_9_layer_call_fn_582803Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0
 
╦trace_02р
C__inference_dense_9_layer_call_and_return_conditional_losses_582814Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╦trace_0
!:	А2dense_9/kernel
:2dense_9/bias
╧
╠trace_02░
__inference_loss_fn_0_582824П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z╠trace_0
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
═0
╬1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
-__inference_sequential_4_layer_call_fn_582367input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
-__inference_sequential_4_layer_call_fn_582396input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
H__inference_sequential_4_layer_call_and_return_conditional_losses_582293input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
H__inference_sequential_4_layer_call_and_return_conditional_losses_582338input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў
t0
╧1
╨2
╤3
╥4
╙5
╘6
╒7
╓8
╫9
╪10
┘11
┌12
█13
▄14
▌15
▐16
▀17
р18
с19
т20
у21
ф22
х23
ц24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
╧0
╤1
╙2
╒3
╫4
┘5
█6
▌7
▀8
с9
у10
х11"
trackable_list_wrapper
В
╨0
╥1
╘2
╓3
╪4
┌5
▄6
▐7
р8
т9
ф10
ц11"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╦B╚
$__inference_signature_wrapper_582493input_5"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_8_layer_call_fn_582508inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582519inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
6__inference_layer_normalization_8_layer_call_fn_582528inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582580inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_8_layer_call_fn_582585inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_582590inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яBь
4__inference_spatial_dropout2d_8_layer_call_fn_582595inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
4__inference_spatial_dropout2d_8_layer_call_fn_582600inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582623inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582628inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_9_layer_call_fn_582637inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582648inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
6__inference_layer_normalization_9_layer_call_fn_582657inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582709inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_9_layer_call_fn_582714inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582719inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яBь
4__inference_spatial_dropout2d_9_layer_call_fn_582724inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
4__inference_spatial_dropout2d_9_layer_call_fn_582729inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582752inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582757inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╘B╤
*__inference_flatten_4_layer_call_fn_582762inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_flatten_4_layer_call_and_return_conditional_losses_582768inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
i0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_dense_8_layer_call_fn_582777inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_8_layer_call_and_return_conditional_losses_582794inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_dense_9_layer_call_fn_582803inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_9_layer_call_and_return_conditional_losses_582814inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│B░
__inference_loss_fn_0_582824"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
R
ч	variables
ш	keras_api

щtotal

ъcount"
_tf_keras_metric
c
ы	variables
ь	keras_api

эtotal

юcount
я
_fn_kwargs"
_tf_keras_metric
.:,2Adam/m/conv2d_8/kernel
.:,2Adam/v/conv2d_8/kernel
 :2Adam/m/conv2d_8/bias
 :2Adam/v/conv2d_8/bias
.:,2"Adam/m/layer_normalization_8/gamma
.:,2"Adam/v/layer_normalization_8/gamma
-:+2!Adam/m/layer_normalization_8/beta
-:+2!Adam/v/layer_normalization_8/beta
.:,(2Adam/m/conv2d_9/kernel
.:,(2Adam/v/conv2d_9/kernel
 :(2Adam/m/conv2d_9/bias
 :(2Adam/v/conv2d_9/bias
.:,(2"Adam/m/layer_normalization_9/gamma
.:,(2"Adam/v/layer_normalization_9/gamma
-:+(2!Adam/m/layer_normalization_9/beta
-:+(2!Adam/v/layer_normalization_9/beta
':%
ША2Adam/m/dense_8/kernel
':%
ША2Adam/v/dense_8/kernel
 :А2Adam/m/dense_8/bias
 :А2Adam/v/dense_8/bias
&:$	А2Adam/m/dense_9/kernel
&:$	А2Adam/v/dense_9/kernel
:2Adam/m/dense_9/bias
:2Adam/v/dense_9/bias
0
щ0
ъ1"
trackable_list_wrapper
.
ч	variables"
_generic_user_object
:  (2total
:  (2count
0
э0
ю1"
trackable_list_wrapper
.
ы	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperа
!__inference__wrapped_model_581992{%&:;DE_`gh8в5
.в+
)К&
input_5         d
к "1к.
,
dense_9!К
dense_9         ╗
D__inference_conv2d_8_layer_call_and_return_conditional_losses_582519s7в4
-в*
(К%
inputs         d
к "4в1
*К'
tensor_0         b
Ъ Х
)__inference_conv2d_8_layer_call_fn_582508h7в4
-в*
(К%
inputs         d
к ")К&
unknown         b╗
D__inference_conv2d_9_layer_call_and_return_conditional_losses_582648s:;7в4
-в*
(К%
inputs         1
к "4в1
*К'
tensor_0         /(
Ъ Х
)__inference_conv2d_9_layer_call_fn_582637h:;7в4
-в*
(К%
inputs         1
к ")К&
unknown         /(м
C__inference_dense_8_layer_call_and_return_conditional_losses_582794e_`0в-
&в#
!К
inputs         Ш
к "-в*
#К 
tensor_0         А
Ъ Ж
(__inference_dense_8_layer_call_fn_582777Z_`0в-
&в#
!К
inputs         Ш
к ""К
unknown         Ал
C__inference_dense_9_layer_call_and_return_conditional_losses_582814dgh0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ Е
(__inference_dense_9_layer_call_fn_582803Ygh0в-
&в#
!К
inputs         А
к "!К
unknown         ▒
E__inference_flatten_4_layer_call_and_return_conditional_losses_582768h7в4
-в*
(К%
inputs         (
к "-в*
#К 
tensor_0         Ш
Ъ Л
*__inference_flatten_4_layer_call_fn_582762]7в4
-в*
(К%
inputs         (
к ""К
unknown         Ш╚
Q__inference_layer_normalization_8_layer_call_and_return_conditional_losses_582580s%&7в4
-в*
(К%
inputs         b
к "4в1
*К'
tensor_0         b
Ъ в
6__inference_layer_normalization_8_layer_call_fn_582528h%&7в4
-в*
(К%
inputs         b
к ")К&
unknown         b╚
Q__inference_layer_normalization_9_layer_call_and_return_conditional_losses_582709sDE7в4
-в*
(К%
inputs         /(
к "4в1
*К'
tensor_0         /(
Ъ в
6__inference_layer_normalization_9_layer_call_fn_582657hDE7в4
-в*
(К%
inputs         /(
к ")К&
unknown         /(D
__inference_loss_fn_0_582824$_в

в 
к "К
unknown ї
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_582590еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_8_layer_call_fn_582585ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_582719еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_9_layer_call_fn_582714ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╩
H__inference_sequential_4_layer_call_and_return_conditional_losses_582293~%&:;DE_`gh@в=
6в3
)К&
input_5         d
p

 
к ",в)
"К
tensor_0         
Ъ ╩
H__inference_sequential_4_layer_call_and_return_conditional_losses_582338~%&:;DE_`gh@в=
6в3
)К&
input_5         d
p 

 
к ",в)
"К
tensor_0         
Ъ д
-__inference_sequential_4_layer_call_fn_582367s%&:;DE_`gh@в=
6в3
)К&
input_5         d
p

 
к "!К
unknown         д
-__inference_sequential_4_layer_call_fn_582396s%&:;DE_`gh@в=
6в3
)К&
input_5         d
p 

 
к "!К
unknown         п
$__inference_signature_wrapper_582493Ж%&:;DE_`ghCв@
в 
9к6
4
input_5)К&
input_5         d"1к.
,
dense_9!К
dense_9         ¤
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582623йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_8_layer_call_and_return_conditional_losses_582628йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_8_layer_call_fn_582595ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_8_layer_call_fn_582600ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    ¤
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582752йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_582757йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_9_layer_call_fn_582724ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_9_layer_call_fn_582729ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    