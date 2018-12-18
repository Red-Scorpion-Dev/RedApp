.class public Lorg/h2/expression/Function;
.super Lorg/h2/expression/Expression;
.source "Function.java"

# interfaces
.implements Lorg/h2/expression/FunctionCall;


# static fields
.field public static final ABS:I = 0x0

.field public static final ACOS:I = 0x1

.field public static final ADD_MONTHS:I = 0x62

.field public static final ARRAY_CONTAINS:I = 0xe6

.field public static final ARRAY_GET:I = 0xd1

.field public static final ARRAY_LENGTH:I = 0xd9

.field public static final ASCII:I = 0x32

.field public static final ASIN:I = 0x2

.field public static final ATAN:I = 0x3

.field public static final ATAN2:I = 0x4

.field public static final AUTOCOMMIT:I = 0x9b

.field public static final BITAND:I = 0x5

.field public static final BITOR:I = 0x6

.field public static final BITXOR:I = 0x7

.field public static final BIT_LENGTH:I = 0x33

.field public static final CANCEL_SESSION:I = 0xdd

.field public static final CASE:I = 0xce

.field public static final CASEWHEN:I = 0xc9

.field public static final CAST:I = 0xcb

.field public static final CEILING:I = 0x8

.field public static final CHAR:I = 0x34

.field public static final CHAR_LENGTH:I = 0x35

.field public static final COALESCE:I = 0xcc

.field public static final COMPRESS:I = 0x20

.field public static final CONCAT:I = 0x36

.field public static final CONCAT_WS:I = 0x5c

.field public static final CONVERT:I = 0xca

.field public static final COS:I = 0x9

.field public static final COSH:I = 0x24

.field public static final COT:I = 0xa

.field public static final CSVREAD:I = 0xd2

.field public static final CSVWRITE:I = 0xd3

.field public static final CURDATE:I = 0x64

.field public static final CURRENT_DATE:I = 0x75

.field public static final CURRENT_TIME:I = 0x76

.field public static final CURRENT_TIMESTAMP:I = 0x77

.field public static final CURRENT_USER:I = 0x98

.field public static final CURRVAL:I = 0xd0

.field public static final CURTIME:I = 0x65

.field public static final DATABASE:I = 0x96

.field public static final DATABASE_PATH:I = 0x9d

.field public static final DATE_ADD:I = 0x66

.field public static final DATE_DIFF:I = 0x67

.field private static final DATE_PART:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_NAME:I = 0x68

.field public static final DAY_OF_MONTH:I = 0x69

.field public static final DAY_OF_WEEK:I = 0x6a

.field public static final DAY_OF_YEAR:I = 0x6b

.field public static final DECODE:I = 0xe5

.field public static final DECRYPT:I = 0x1f

.field public static final DEGREES:I = 0xb

.field public static final DIFFERENCE:I = 0x37

.field public static final DISK_SPACE_USED:I = 0x9f

.field public static final ENCRYPT:I = 0x1e

.field public static final EXP:I = 0xc

.field public static final EXPAND:I = 0x21

.field public static final EXTRACT:I = 0x78

.field public static final FILE_READ:I = 0xe1

.field public static final FILE_WRITE:I = 0xe8

.field public static final FLOOR:I = 0xd

.field public static final FORMATDATETIME:I = 0x79

.field private static final FUNCTIONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/expression/FunctionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GREATEST:I = 0xdb

.field public static final H2VERSION:I = 0xe7

.field public static final HASH:I = 0x1d

.field public static final HEXTORAW:I = 0x38

.field public static final HOUR:I = 0x6c

.field public static final IDENTITY:I = 0x99

.field public static final IFNULL:I = 0xc8

.field public static final INSERT:I = 0x39

.field public static final INSTR:I = 0x3a

.field public static final ISO_DAY_OF_WEEK:I = 0x7d

.field public static final ISO_WEEK:I = 0x7c

.field public static final ISO_YEAR:I = 0x7b

.field public static final LCASE:I = 0x3b

.field public static final LEAST:I = 0xdc

.field public static final LEFT:I = 0x3c

.field public static final LENGTH:I = 0x3d

.field public static final LINK_SCHEMA:I = 0xda

.field public static final LN:I = 0x27

.field public static final LOCATE:I = 0x3e

.field public static final LOCK_MODE:I = 0xd6

.field public static final LOCK_TIMEOUT:I = 0x9e

.field public static final LOG:I = 0xe

.field public static final LOG10:I = 0xf

.field public static final LOWER:I = 0x4b

.field public static final LPAD:I = 0x5b

.field public static final LTRIM:I = 0x3f

.field public static final MEMORY_FREE:I = 0xd4

.field public static final MEMORY_USED:I = 0xd5

.field public static final MINUTE:I = 0x6d

.field public static final MOD:I = 0x10

.field public static final MONTH:I = 0x6e

.field public static final MONTH_NAME:I = 0x6f

.field public static final NEXTVAL:I = 0xcf

.field public static final NOW:I = 0x70

.field public static final NULLIF:I = 0xcd

.field public static final NVL2:I = 0xe4

.field public static final OCTET_LENGTH:I = 0x40

.field public static final ORA_HASH:I = 0x5f

.field public static final PARSEDATETIME:I = 0x7a

.field public static final PI:I = 0x11

.field public static final POSITION:I = 0x4d

.field public static final POWER:I = 0x12

.field private static final PRECISION_UNKNOWN:J = -0x1L

.field public static final QUARTER:I = 0x71

.field public static final RADIANS:I = 0x13

.field public static final RAND:I = 0x14

.field public static final RANDOM_UUID:I = 0x23

.field public static final RAWTOHEX:I = 0x41

.field public static final READONLY:I = 0x9c

.field public static final REGEXP_REPLACE:I = 0x59

.field public static final REPEAT:I = 0x42

.field public static final REPLACE:I = 0x43

.field public static final RIGHT:I = 0x44

.field public static final ROUND:I = 0x15

.field public static final ROUNDMAGIC:I = 0x16

.field public static final ROW_NUMBER:I = 0x12c

.field public static final RPAD:I = 0x5a

.field public static final RTRIM:I = 0x45

.field public static final SCHEMA:I = 0xd7

.field public static final SCOPE_IDENTITY:I = 0x9a

.field public static final SECOND:I = 0x72

.field public static final SECURE_RAND:I = 0x1c

.field public static final SESSION_ID:I = 0xd8

.field public static final SET:I = 0xde

.field public static final SIGN:I = 0x17

.field public static final SIN:I = 0x18

.field public static final SINH:I = 0x25

.field public static final SOUNDEX:I = 0x46

.field private static final SOUNDEX_INDEX:[C

.field public static final SPACE:I = 0x47

.field public static final SQRT:I = 0x19

.field public static final STRINGDECODE:I = 0x50

.field public static final STRINGENCODE:I = 0x4f

.field public static final STRINGTOUTF8:I = 0x51

.field public static final SUBSTR:I = 0x48

.field public static final SUBSTRING:I = 0x49

.field public static final TABLE:I = 0xdf

.field public static final TABLE_DISTINCT:I = 0xe0

.field public static final TAN:I = 0x1a

.field public static final TANH:I = 0x26

.field public static final TO_CHAR:I = 0x5d

.field public static final TO_DATE:I = 0x60

.field public static final TO_TIMESTAMP:I = 0x61

.field public static final TRANSACTION_ID:I = 0xe2

.field public static final TRANSLATE:I = 0x5e

.field public static final TRIM:I = 0x4e

.field public static final TRUNCATE:I = 0x1b

.field public static final TRUNCATE_VALUE:I = 0xe3

.field public static final UCASE:I = 0x4a

.field public static final UPPER:I = 0x4c

.field public static final USER:I = 0x97

.field public static final UTF8TOSTRING:I = 0x52

.field public static final VALUES:I = 0xfa

.field private static final VAR_ARGS:I = -0x1

.field public static final WEEK:I = 0x73

.field public static final XMLATTR:I = 0x53

.field public static final XMLCDATA:I = 0x56

.field public static final XMLCOMMENT:I = 0x55

.field public static final XMLNODE:I = 0x54

.field public static final XMLSTARTDOC:I = 0x57

.field public static final XMLTEXT:I = 0x58

.field public static final YEAR:I = 0x74

.field public static final ZERO:I = 0x22


# instance fields
.field protected args:[Lorg/h2/expression/Expression;

.field private dataType:I

.field private final database:Lorg/h2/engine/Database;

.field private displaySize:I

.field private final info:Lorg/h2/expression/FunctionInfo;

.field private precision:J

.field private scale:I

.field private varArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 139
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/expression/Function;->FUNCTIONS:Ljava/util/HashMap;

    .line 140
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const/16 v0, 0x80

    .line 141
    new-array v0, v0, [C

    sput-object v0, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    .line 154
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_YEAR"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "YEAR"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "YYYY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "YY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_MONTH"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "MONTH"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "MM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "M"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_WEEK"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "WW"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "WK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "WEEK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "DAY"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "DD"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "D"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_DAY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "DAYOFYEAR"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "DAY_OF_YEAR"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "DY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "DOY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_HOUR"

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "HOUR"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "HH"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_MINUTE"

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "MINUTE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "MI"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "N"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SQL_TSI_SECOND"

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SECOND"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "SS"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "S"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "MILLISECOND"

    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const-string v1, "MS"

    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "7AEIOUY8HW1BFPV2CGJKQSXZ3DT4L5MN6R"

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v1, :cond_1

    .line 192
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-ge v13, v14, :cond_0

    move v12, v13

    goto :goto_1

    .line 196
    :cond_0
    sget-object v14, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    aput-char v12, v14, v13

    .line 197
    sget-object v14, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    aput-char v12, v14, v13

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "ABS"

    .line 202
    invoke-static {v0, v10, v2, v10}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ACOS"

    const/4 v1, 0x7

    .line 203
    invoke-static {v0, v2, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ASIN"

    .line 204
    invoke-static {v0, v3, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ATAN"

    .line 205
    invoke-static {v0, v4, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ATAN2"

    const/4 v11, 0x4

    .line 206
    invoke-static {v0, v11, v3, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "BITAND"

    .line 207
    invoke-static {v0, v5, v3, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "BITOR"

    .line 208
    invoke-static {v0, v6, v3, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "BITXOR"

    .line 209
    invoke-static {v0, v1, v3, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CEILING"

    const/16 v12, 0x8

    .line 210
    invoke-static {v0, v12, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CEIL"

    .line 211
    invoke-static {v0, v12, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "COS"

    const/16 v12, 0x9

    .line 212
    invoke-static {v0, v12, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "COSH"

    const/16 v12, 0x24

    .line 213
    invoke-static {v0, v12, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "COT"

    const/16 v12, 0xa

    .line 214
    invoke-static {v0, v12, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DEGREES"

    .line 215
    invoke-static {v0, v7, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "EXP"

    .line 216
    invoke-static {v0, v8, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "FLOOR"

    .line 217
    invoke-static {v0, v9, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LOG"

    const/16 v13, 0xe

    .line 218
    invoke-static {v0, v13, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LN"

    const/16 v13, 0x27

    .line 219
    invoke-static {v0, v13, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LOG10"

    const/16 v13, 0xf

    .line 220
    invoke-static {v0, v13, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "MOD"

    const/16 v13, 0x10

    .line 221
    invoke-static {v0, v13, v3, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "PI"

    const/16 v13, 0x11

    .line 222
    invoke-static {v0, v13, v10, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "POWER"

    const/16 v13, 0x12

    .line 223
    invoke-static {v0, v13, v3, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RADIANS"

    const/16 v14, 0x13

    .line 224
    invoke-static {v0, v14, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RAND"

    const/16 v14, 0x14

    const/4 v15, -0x1

    .line 227
    invoke-static {v0, v14, v15, v1}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "RANDOM"

    .line 228
    invoke-static {v0, v14, v15, v1}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "ROUND"

    const/16 v6, 0x15

    .line 229
    invoke-static {v0, v6, v15, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ROUNDMAGIC"

    const/16 v6, 0x16

    .line 230
    invoke-static {v0, v6, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SIGN"

    const/16 v6, 0x17

    .line 231
    invoke-static {v0, v6, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SIN"

    const/16 v6, 0x18

    .line 232
    invoke-static {v0, v6, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SINH"

    const/16 v6, 0x25

    .line 233
    invoke-static {v0, v6, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SQRT"

    const/16 v6, 0x19

    .line 234
    invoke-static {v0, v6, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TAN"

    const/16 v6, 0x1a

    .line 235
    invoke-static {v0, v6, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TANH"

    const/16 v6, 0x26

    .line 236
    invoke-static {v0, v6, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TRUNCATE"

    const/16 v1, 0x1b

    .line 237
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TRUNC"

    .line 239
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "HASH"

    const/16 v1, 0x1d

    .line 240
    invoke-static {v0, v1, v4, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ENCRYPT"

    const/16 v1, 0x1e

    .line 241
    invoke-static {v0, v1, v4, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DECRYPT"

    const/16 v1, 0x1f

    .line 242
    invoke-static {v0, v1, v4, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SECURE_RAND"

    const/16 v1, 0x1c

    .line 243
    invoke-static {v0, v1, v2, v8}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "COMPRESS"

    const/16 v1, 0x20

    .line 244
    invoke-static {v0, v1, v15, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "EXPAND"

    const/16 v1, 0x21

    .line 245
    invoke-static {v0, v1, v2, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ZERO"

    const/16 v1, 0x22

    .line 246
    invoke-static {v0, v1, v10, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RANDOM_UUID"

    const/16 v1, 0x23

    .line 247
    invoke-static {v0, v1, v10, v14}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "SYS_GUID"

    .line 248
    invoke-static {v0, v1, v10, v14}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "ASCII"

    const/16 v1, 0x32

    .line 250
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "BIT_LENGTH"

    const/16 v1, 0x33

    .line 251
    invoke-static {v0, v1, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CHAR"

    const/16 v1, 0x34

    .line 252
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CHR"

    .line 253
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CHAR_LENGTH"

    const/16 v1, 0x35

    .line 254
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CHARACTER_LENGTH"

    .line 256
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CONCAT"

    const/16 v1, 0x36

    .line 257
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "CONCAT_WS"

    const/16 v1, 0x5c

    .line 258
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "DIFFERENCE"

    const/16 v1, 0x37

    .line 259
    invoke-static {v0, v1, v3, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "HEXTORAW"

    const/16 v1, 0x38

    .line 260
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "INSERT"

    const/16 v1, 0x39

    .line 261
    invoke-static {v0, v1, v11, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "LCASE"

    const/16 v1, 0x3b

    .line 262
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LEFT"

    const/16 v1, 0x3c

    .line 263
    invoke-static {v0, v1, v3, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LENGTH"

    const/16 v1, 0x3d

    .line 264
    invoke-static {v0, v1, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LOCATE"

    const/16 v1, 0x3e

    .line 266
    invoke-static {v0, v1, v15, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CHARINDEX"

    .line 268
    invoke-static {v0, v1, v15, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "POSITION"

    .line 270
    invoke-static {v0, v1, v3, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "INSTR"

    const/16 v1, 0x3a

    .line 271
    invoke-static {v0, v1, v15, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LTRIM"

    const/16 v1, 0x3f

    .line 272
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "OCTET_LENGTH"

    const/16 v1, 0x40

    .line 273
    invoke-static {v0, v1, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RAWTOHEX"

    const/16 v1, 0x41

    .line 274
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "REPEAT"

    const/16 v1, 0x42

    .line 275
    invoke-static {v0, v1, v3, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "REPLACE"

    const/16 v1, 0x43

    .line 276
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RIGHT"

    const/16 v1, 0x44

    .line 277
    invoke-static {v0, v1, v3, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RTRIM"

    const/16 v1, 0x45

    .line 278
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SOUNDEX"

    const/16 v1, 0x46

    .line 279
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SPACE"

    const/16 v1, 0x47

    .line 280
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SUBSTR"

    const/16 v1, 0x48

    .line 281
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SUBSTRING"

    const/16 v1, 0x49

    .line 282
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "UCASE"

    const/16 v1, 0x4a

    .line 283
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LOWER"

    const/16 v1, 0x4b

    .line 284
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "UPPER"

    const/16 v1, 0x4c

    .line 285
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "POSITION"

    const/16 v1, 0x4d

    .line 286
    invoke-static {v0, v1, v3, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TRIM"

    const/16 v1, 0x4e

    .line 287
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "STRINGENCODE"

    const/16 v1, 0x4f

    .line 288
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "STRINGDECODE"

    const/16 v1, 0x50

    .line 289
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "STRINGTOUTF8"

    const/16 v1, 0x51

    .line 290
    invoke-static {v0, v1, v2, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "UTF8TOSTRING"

    const/16 v1, 0x52

    .line 291
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "XMLATTR"

    const/16 v1, 0x53

    .line 292
    invoke-static {v0, v1, v3, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "XMLNODE"

    const/16 v1, 0x54

    .line 293
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "XMLCOMMENT"

    const/16 v1, 0x55

    .line 294
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "XMLCDATA"

    const/16 v1, 0x56

    .line 295
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "XMLSTARTDOC"

    const/16 v1, 0x57

    .line 296
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "XMLTEXT"

    const/16 v1, 0x58

    .line 297
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "REGEXP_REPLACE"

    const/16 v1, 0x59

    .line 298
    invoke-static {v0, v1, v4, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "RPAD"

    const/16 v1, 0x5a

    .line 299
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LPAD"

    const/16 v1, 0x5b

    .line 300
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TO_CHAR"

    const/16 v1, 0x5d

    .line 301
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ORA_HASH"

    const/16 v1, 0x5f

    .line 302
    invoke-static {v0, v1, v15, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TRANSLATE"

    const/16 v1, 0x5e

    .line 303
    invoke-static {v0, v1, v4, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "CURRENT_DATE"

    const/16 v1, 0x75

    .line 306
    invoke-static {v0, v1, v10, v12}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "CURDATE"

    const/16 v1, 0x64

    .line 308
    invoke-static {v0, v1, v10, v12}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "TO_DATE"

    const/16 v1, 0x60

    .line 310
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TO_TIMESTAMP"

    const/16 v1, 0x61

    .line 311
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ADD_MONTHS"

    const/16 v1, 0x62

    .line 312
    invoke-static {v0, v1, v3, v7}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "GETDATE"

    const/16 v1, 0x64

    .line 314
    invoke-static {v0, v1, v10, v12}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "CURRENT_TIME"

    const/16 v1, 0x76

    const/16 v6, 0x9

    .line 316
    invoke-static {v0, v1, v10, v6}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "CURTIME"

    const/16 v1, 0x65

    .line 318
    invoke-static {v0, v1, v10, v6}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "CURRENT_TIMESTAMP"

    const/16 v1, 0x77

    .line 320
    invoke-static {v0, v1, v15, v7}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "NOW"

    const/16 v1, 0x70

    .line 322
    invoke-static {v0, v1, v15, v7}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "DATEADD"

    const/16 v1, 0x66

    .line 324
    invoke-static {v0, v1, v4, v7}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TIMESTAMPADD"

    .line 326
    invoke-static {v0, v1, v4, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DATEDIFF"

    const/16 v1, 0x67

    .line 328
    invoke-static {v0, v1, v4, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TIMESTAMPDIFF"

    .line 330
    invoke-static {v0, v1, v4, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAYNAME"

    const/16 v1, 0x68

    .line 332
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAYNAME"

    .line 334
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAY"

    const/16 v1, 0x69

    .line 336
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAY_OF_MONTH"

    .line 338
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAY_OF_WEEK"

    const/16 v1, 0x6a

    .line 340
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAY_OF_YEAR"

    const/16 v1, 0x6b

    .line 342
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAYOFMONTH"

    const/16 v1, 0x69

    .line 344
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAYOFWEEK"

    const/16 v1, 0x6a

    .line 346
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DAYOFYEAR"

    const/16 v1, 0x6b

    .line 348
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "HOUR"

    const/16 v1, 0x6c

    .line 350
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "MINUTE"

    const/16 v1, 0x6d

    .line 352
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "MONTH"

    const/16 v1, 0x6e

    .line 354
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "MONTHNAME"

    const/16 v1, 0x6f

    .line 356
    invoke-static {v0, v1, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "QUARTER"

    const/16 v1, 0x71

    .line 358
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "SECOND"

    const/16 v1, 0x72

    .line 360
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "WEEK"

    const/16 v1, 0x73

    .line 362
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "YEAR"

    const/16 v1, 0x74

    .line 364
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "EXTRACT"

    const/16 v1, 0x78

    .line 366
    invoke-static {v0, v1, v3, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "FORMATDATETIME"

    const/16 v1, 0x79

    .line 368
    invoke-static {v0, v1, v15, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "PARSEDATETIME"

    const/16 v1, 0x7a

    .line 370
    invoke-static {v0, v1, v15, v7}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "ISO_YEAR"

    const/16 v1, 0x7b

    .line 372
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ISO_WEEK"

    const/16 v1, 0x7c

    .line 374
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "ISO_DAY_OF_WEEK"

    const/16 v1, 0x7d

    .line 376
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "DATABASE"

    const/16 v1, 0x96

    .line 379
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "USER"

    const/16 v1, 0x97

    .line 381
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "CURRENT_USER"

    const/16 v1, 0x98

    .line 383
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "IDENTITY"

    const/16 v1, 0x99

    .line 385
    invoke-static {v0, v1, v10, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "SCOPE_IDENTITY"

    const/16 v1, 0x9a

    .line 387
    invoke-static {v0, v1, v10, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "IDENTITY_VAL_LOCAL"

    const/16 v1, 0x99

    .line 389
    invoke-static {v0, v1, v10, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "LAST_INSERT_ID"

    .line 391
    invoke-static {v0, v1, v10, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "LASTVAL"

    .line 393
    invoke-static {v0, v1, v10, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "AUTOCOMMIT"

    const/16 v1, 0x9b

    .line 395
    invoke-static {v0, v1, v10, v2}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "READONLY"

    const/16 v1, 0x9c

    .line 397
    invoke-static {v0, v1, v10, v2}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "DATABASE_PATH"

    const/16 v1, 0x9d

    .line 399
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LOCK_TIMEOUT"

    const/16 v1, 0x9e

    .line 401
    invoke-static {v0, v1, v10, v11}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "IFNULL"

    const/16 v1, 0xc8

    .line 403
    invoke-static {v0, v1, v3, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "ISNULL"

    .line 405
    invoke-static {v0, v1, v3, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "CASEWHEN"

    const/16 v1, 0xc9

    .line 407
    invoke-static {v0, v1, v4, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "CONVERT"

    const/16 v1, 0xca

    .line 409
    invoke-static {v0, v1, v2, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "CAST"

    const/16 v1, 0xcb

    .line 411
    invoke-static {v0, v1, v2, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "TRUNCATE_VALUE"

    const/16 v1, 0xe3

    .line 413
    invoke-static {v0, v1, v4, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "COALESCE"

    const/16 v1, 0xcc

    .line 415
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "NVL"

    .line 417
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "NVL2"

    const/16 v1, 0xe4

    .line 419
    invoke-static {v0, v1, v4, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "NULLIF"

    const/16 v1, 0xcd

    .line 421
    invoke-static {v0, v1, v3, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "CASE"

    const/16 v1, 0xce

    .line 423
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "NEXTVAL"

    const/16 v1, 0xcf

    .line 425
    invoke-static {v0, v1, v15, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "CURRVAL"

    const/16 v1, 0xd0

    .line 427
    invoke-static {v0, v1, v15, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "ARRAY_GET"

    const/16 v1, 0xd1

    .line 429
    invoke-static {v0, v1, v3, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v17, "ARRAY_CONTAINS"

    const/16 v18, 0xe6

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    .line 431
    invoke-static/range {v17 .. v23}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v24, "CSVREAD"

    const/16 v25, 0xd2

    const/16 v26, -0x1

    const/16 v27, 0x12

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 433
    invoke-static/range {v24 .. v30}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v17, "CSVWRITE"

    const/16 v18, 0xd3

    const/16 v19, -0x1

    const/16 v20, 0x4

    const/16 v22, 0x0

    .line 435
    invoke-static/range {v17 .. v23}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v0, "MEMORY_FREE"

    const/16 v1, 0xd4

    .line 437
    invoke-static {v0, v1, v10, v11}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "MEMORY_USED"

    const/16 v1, 0xd5

    .line 439
    invoke-static {v0, v1, v10, v11}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "LOCK_MODE"

    const/16 v1, 0xd6

    .line 441
    invoke-static {v0, v1, v10, v11}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "SCHEMA"

    const/16 v1, 0xd7

    .line 443
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "SESSION_ID"

    const/16 v1, 0xd8

    .line 445
    invoke-static {v0, v1, v10, v11}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "ARRAY_LENGTH"

    const/16 v1, 0xd9

    .line 447
    invoke-static {v0, v1, v2, v11}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "LINK_SCHEMA"

    const/16 v1, 0xda

    const/4 v3, 0x6

    .line 449
    invoke-static {v0, v1, v3, v13}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "LEAST"

    const/16 v1, 0xdc

    .line 451
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "GREATEST"

    const/16 v1, 0xdb

    .line 453
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "CANCEL_SESSION"

    const/16 v1, 0xdd

    .line 455
    invoke-static {v0, v1, v2, v2}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v16, "SET"

    const/16 v17, 0xde

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x1

    .line 457
    invoke-static/range {v16 .. v22}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v23, "FILE_READ"

    const/16 v24, 0xe1

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x1

    .line 459
    invoke-static/range {v23 .. v29}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v16, "FILE_WRITE"

    const/16 v17, 0xe8

    const/16 v19, 0x5

    .line 461
    invoke-static/range {v16 .. v22}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v0, "TRANSACTION_ID"

    const/16 v1, 0xe2

    .line 463
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "DECODE"

    const/16 v1, 0xe5

    .line 465
    invoke-static {v0, v1, v15, v10}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "DISK_SPACE_USED"

    const/16 v1, 0x9f

    .line 467
    invoke-static {v0, v1, v2, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v0, "H2VERSION"

    const/16 v1, 0xe7

    .line 469
    invoke-static {v0, v1, v10, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v0, "TABLE"

    const/16 v1, 0xdf

    .line 472
    invoke-static {v0, v1, v15, v13}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "TABLE_DISTINCT"

    const/16 v1, 0xe0

    .line 474
    invoke-static {v0, v1, v15, v13}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v0, "ROW_NUMBER"

    const/16 v1, 0x12c

    .line 478
    invoke-static {v0, v1, v10, v5}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v11, "VALUES"

    const/16 v12, 0xfa

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 481
    invoke-static/range {v11 .. v17}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method protected constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;)V
    .locals 2

    .line 484
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    const-wide/16 v0, -0x1

    .line 148
    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    .line 485
    iput-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    .line 486
    iput-object p2, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    .line 487
    iget p1, p2, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 488
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    goto :goto_0

    .line 490
    :cond_0
    iget p1, p2, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    new-array p1, p1, [Lorg/h2/expression/Expression;

    iput-object p1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    :goto_0
    return-void
.end method

.method private static addFunction(Ljava/lang/String;III)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 515
    invoke-static/range {v0 .. v6}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private static addFunction(Ljava/lang/String;IIIZZZ)V
    .locals 1

    .line 497
    new-instance v0, Lorg/h2/expression/FunctionInfo;

    invoke-direct {v0}, Lorg/h2/expression/FunctionInfo;-><init>()V

    .line 498
    iput-object p0, v0, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    .line 499
    iput p1, v0, Lorg/h2/expression/FunctionInfo;->type:I

    .line 500
    iput p2, v0, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    .line 501
    iput p3, v0, Lorg/h2/expression/FunctionInfo;->dataType:I

    .line 502
    iput-boolean p4, v0, Lorg/h2/expression/FunctionInfo;->nullIfParameterIsNull:Z

    .line 503
    iput-boolean p5, v0, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    .line 504
    iput-boolean p6, v0, Lorg/h2/expression/FunctionInfo;->bufferResultSetToLocalTemp:Z

    .line 505
    sget-object p1, Lorg/h2/expression/Function;->FUNCTIONS:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFunctionNotDeterministic(Ljava/lang/String;III)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 510
    invoke-static/range {v0 .. v6}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private static addFunctionWithNull(Ljava/lang/String;III)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 520
    invoke-static/range {v0 .. v6}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private calculatePrecisionAndDisplaySize()V
    .locals 10

    .line 2487
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 2546
    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    .line 2547
    iget-wide v1, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    iput-wide v1, p0, Lorg/h2/expression/Function;->precision:J

    .line 2548
    iget v0, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_1

    :sswitch_0
    const-wide/16 v0, 0x14

    .line 2542
    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    .line 2543
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    long-to-int v0, v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_1

    .line 2536
    :sswitch_1
    iput-wide v1, p0, Lorg/h2/expression/Function;->precision:J

    .line 2537
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    long-to-int v0, v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_1

    .line 2532
    :sswitch_2
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    mul-long v3, v3, v1

    iput-wide v3, p0, Lorg/h2/expression/Function;->precision:J

    .line 2533
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_1

    .line 2514
    :sswitch_3
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    div-long/2addr v3, v1

    iput-wide v3, p0, Lorg/h2/expression/Function;->precision:J

    .line 2515
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_1

    :sswitch_4
    const-wide/16 v0, 0x0

    .line 2502
    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    .line 2503
    iput v3, p0, Lorg/h2/expression/Function;->displaySize:I

    .line 2504
    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 2505
    iget-wide v6, p0, Lorg/h2/expression/Function;->precision:J

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/h2/expression/Function;->precision:J

    .line 2506
    iget v6, p0, Lorg/h2/expression/Function;->displaySize:I

    int-to-long v6, v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v5

    iput v5, p0, Lorg/h2/expression/Function;->displaySize:I

    .line 2508
    iget-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    const-wide v5, 0x7fffffffffffffffL

    .line 2509
    iput-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_5
    const-wide/16 v0, 0x1

    .line 2498
    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    const/4 v0, 0x1

    .line 2499
    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto :goto_1

    .line 2494
    :sswitch_6
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    .line 2495
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto :goto_1

    .line 2490
    :sswitch_7
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/expression/Function;->precision:J

    .line 2491
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto :goto_1

    .line 2528
    :sswitch_8
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    .line 2529
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_8
        0x1e -> :sswitch_7
        0x1f -> :sswitch_7
        0x20 -> :sswitch_6
        0x34 -> :sswitch_5
        0x36 -> :sswitch_4
        0x38 -> :sswitch_3
        0x3b -> :sswitch_8
        0x3f -> :sswitch_8
        0x41 -> :sswitch_2
        0x44 -> :sswitch_8
        0x45 -> :sswitch_8
        0x46 -> :sswitch_1
        0x4a -> :sswitch_8
        0x4b -> :sswitch_8
        0x4c -> :sswitch_8
        0x4e -> :sswitch_8
        0x50 -> :sswitch_8
        0x52 -> :sswitch_8
        0x68 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method private static cancelStatement(Lorg/h2/engine/Session;I)Z
    .locals 5

    .line 1138
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 1139
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object p0

    .line 1140
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1141
    invoke-virtual {v3}, Lorg/h2/engine/Session;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1142
    invoke-virtual {v3}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/Command;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private convertResult(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 1134
    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private static dateadd(Ljava/lang/String;JLjava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 4

    .line 1769
    invoke-static {p0}, Lorg/h2/expression/Function;->getDatePart(Ljava/lang/String;)I

    move-result p0

    const v0, 0xf4240

    const/16 v1, 0xe

    if-ne p0, v1, :cond_0

    .line 1771
    new-instance p0, Ljava/sql/Timestamp;

    invoke-virtual {p3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1772
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p1

    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    rem-int/2addr p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p0

    :cond_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 1780
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1781
    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    rem-int/2addr v2, v0

    .line 1782
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    long-to-int p1, p1

    .line 1783
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->add(II)V

    .line 1784
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 1785
    new-instance p2, Ljava/sql/Timestamp;

    invoke-direct {p2, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1786
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p2, p0}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p2

    .line 1778
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "DATEADD count"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static datediff(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/sql/Timestamp;)J
    .locals 18

    .line 1803
    invoke-static/range {p0 .. p0}, Lorg/h2/expression/Function;->getDatePart(Ljava/lang/String;)I

    move-result v0

    .line 1804
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1805
    invoke-virtual/range {p1 .. p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    .line 1808
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    move-object/from16 v6, p1

    .line 1809
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v14, 0x0

    .line 1810
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v15, 0xe

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/4 v15, 0x7

    move-object v6, v13

    const/4 v15, 0x5

    move/from16 v11, v16

    const/4 v15, 0x2

    move/from16 v12, v17

    invoke-virtual/range {v6 .. v12}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    move-object/from16 v6, p2

    .line 1815
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1816
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object v6, v13

    invoke-virtual/range {v6 .. v12}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x3

    const-wide/32 v7, 0x5265c00

    if-eq v0, v6, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1854
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 1855
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1856
    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1857
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1858
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1859
    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v4, v3

    if-ne v0, v15, :cond_0

    mul-int/lit8 v4, v4, 0xc

    sub-int/2addr v1, v6

    add-int/2addr v4, v1

    int-to-long v0, v4

    return-wide v0

    :cond_0
    if-ne v0, v2, :cond_1

    int-to-long v0, v4

    return-wide v0

    .line 1866
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATEDIFF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    sub-long/2addr v4, v2

    return-wide v4

    .line 1850
    :pswitch_1
    div-long/2addr v4, v7

    div-long/2addr v2, v7

    const/4 v0, 0x0

    sub-long/2addr v4, v2

    return-wide v4

    :cond_2
    :pswitch_2
    const-wide/32 v9, 0x36ee80

    .line 1831
    div-long v11, v2, v9

    mul-long v11, v11, v9

    div-long v13, v4, v9

    mul-long v13, v13, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    sub-long/2addr v4, v11

    if-eq v0, v6, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_2

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_3
    const-wide/16 v0, 0x3e8

    .line 1836
    div-long/2addr v4, v0

    div-long/2addr v2, v0

    sub-long/2addr v4, v2

    return-wide v4

    :pswitch_4
    const-wide/32 v0, 0xea60

    .line 1838
    div-long/2addr v4, v0

    div-long/2addr v2, v0

    sub-long/2addr v4, v2

    return-wide v4

    .line 1840
    :pswitch_5
    div-long/2addr v4, v9

    div-long/2addr v2, v9

    const/4 v0, 0x0

    sub-long/2addr v4, v2

    return-wide v4

    .line 1842
    :cond_3
    div-long/2addr v4, v7

    div-long/2addr v2, v7

    const/4 v0, 0x0

    sub-long/2addr v4, v2

    return-wide v4

    :cond_4
    const-wide/32 v0, 0x240c8400

    .line 1844
    div-long/2addr v4, v0

    div-long/2addr v2, v0

    sub-long/2addr v4, v2

    return-wide v4

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static decrypt(Ljava/lang/String;[B[B)[B
    .locals 1

    .line 1722
    invoke-static {p0}, Lorg/h2/security/CipherFactory;->getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;

    move-result-object p0

    .line 1723
    invoke-interface {p0}, Lorg/h2/security/BlockCipher;->getKeyLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    .line 1724
    invoke-interface {p0, p1}, Lorg/h2/security/BlockCipher;->setKey([B)V

    const/16 p1, 0x10

    .line 1725
    invoke-static {p2, p1}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    .line 1726
    array-length p2, p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lorg/h2/security/BlockCipher;->decrypt([BII)V

    return-object p1
.end method

.method private static encrypt(Ljava/lang/String;[B[B)[B
    .locals 1

    .line 1731
    invoke-static {p0}, Lorg/h2/security/CipherFactory;->getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;

    move-result-object p0

    .line 1732
    invoke-interface {p0}, Lorg/h2/security/BlockCipher;->getKeyLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    .line 1733
    invoke-interface {p0, p1}, Lorg/h2/security/BlockCipher;->setKey([B)V

    const/16 p1, 0x10

    .line 1734
    invoke-static {p2, p1}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    .line 1735
    array-length p2, p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    return-object p1
.end method

.method private static getDatePart(Ljava/lang/String;)I
    .locals 2

    .line 1761
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "date part"

    .line 1763
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static getDifference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1996
    invoke-static {p0}, Lorg/h2/expression/Function;->getSoundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1997
    invoke-static {p1}, Lorg/h2/expression/Function;->getSoundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 2000
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getDiskSpaceUsed(Lorg/h2/engine/Session;Lorg/h2/value/Value;)J
    .locals 1

    .line 1154
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 1155
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    .line 1156
    invoke-virtual {v0, p0}, Lorg/h2/command/Parser;->parseTableName(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p0

    .line 1157
    invoke-virtual {p0}, Lorg/h2/table/Table;->getDiskSpaceUsed()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;
    .locals 3

    .line 543
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-nez v0, :cond_0

    .line 545
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 547
    :cond_0
    invoke-static {p1}, Lorg/h2/expression/Function;->getFunctionInfo(Ljava/lang/String;)Lorg/h2/expression/FunctionInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 551
    :cond_1
    iget v0, p1, Lorg/h2/expression/FunctionInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 556
    new-instance v0, Lorg/h2/expression/Function;

    invoke-direct {v0, p0, p1}, Lorg/h2/expression/Function;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;)V

    return-object v0

    .line 554
    :pswitch_0
    new-instance v0, Lorg/h2/expression/TableFunction;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/h2/expression/TableFunction;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xdf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getFunctionInfo(Ljava/lang/String;)Lorg/h2/expression/FunctionInfo;
    .locals 1

    .line 531
    sget-object v0, Lorg/h2/expression/Function;->FUNCTIONS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/expression/FunctionInfo;

    return-object p0
.end method

.method private static getHash(Ljava/lang/String;[BI)[B
    .locals 1

    const-string v0, "SHA256"

    .line 1740
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    move-object v0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1744
    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const-string p1, "algorithm"

    .line 1741
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;
    .locals 2

    .line 1162
    array-length v0, p1

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    return-object v1

    .line 1165
    :cond_0
    aget-object v0, p2, p3

    if-nez v0, :cond_2

    .line 1167
    aget-object p1, p1, p3

    if-nez p1, :cond_1

    return-object v1

    .line 1171
    :cond_1
    invoke-virtual {p1, p0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    aput-object v0, p2, p3

    :cond_2
    return-object v0
.end method

.method private static getPaddedArrayCopy([BI)[B
    .locals 2

    .line 1715
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result p1

    .line 1716
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    .line 1717
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private getSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;Lorg/h2/value/Value;)Lorg/h2/schema/Sequence;
    .locals 1

    if-nez p3, :cond_2

    .line 1670
    new-instance p3, Lorg/h2/command/Parser;

    invoke-direct {p3, p1}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 1671
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 1672
    invoke-virtual {p3, p2}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p3

    .line 1673
    instance-of v0, p3, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_1

    .line 1674
    check-cast p3, Lorg/h2/expression/ExpressionColumn;

    .line 1675
    invoke-virtual {p3}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1677
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1680
    :cond_0
    invoke-virtual {p3}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1683
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 1686
    :cond_2
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1687
    invoke-virtual {p3}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 1689
    :goto_0
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1691
    invoke-static {v0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1692
    iget-object p3, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    .line 1694
    :cond_3
    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p3

    if-nez p3, :cond_4

    .line 1696
    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1697
    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method private getSimpleValue(Lorg/h2/engine/Session;Lorg/h2/value/Value;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 6

    .line 590
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_4

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    packed-switch v0, :pswitch_data_8

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_c

    packed-switch v0, :pswitch_data_d

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    const/16 v4, 0x11

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    packed-switch v0, :pswitch_data_12

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_14

    .line 1124
    :sswitch_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionId()Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 1082
    :sswitch_1
    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1083
    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1084
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    .line 1085
    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    if-lt p1, v3, :cond_1

    .line 1086
    array-length p3, p2

    if-le p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v3

    .line 1089
    aget-object p1, p2, p1

    goto :goto_1

    .line 1087
    :cond_1
    :goto_0
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_2
    :goto_1
    move-object v1, p1

    goto/16 :goto_14

    .line 1092
    :cond_3
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_14

    :sswitch_2
    if-nez p2, :cond_5

    .line 1049
    array-length p2, p3

    sub-int/2addr p2, v3

    const/4 p4, 0x1

    :goto_2
    if-ge p4, p2, :cond_7

    .line 1050
    aget-object v0, p3, p4

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 1051
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v2, :cond_4

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/2addr p4, v3

    .line 1053
    aget-object v1, p3, p4

    goto :goto_4

    :cond_4
    add-int/lit8 p4, p4, 0x2

    goto :goto_2

    .line 1063
    :cond_5
    sget-object p4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, p4, :cond_7

    .line 1064
    array-length p4, p3

    sub-int/2addr p4, v3

    const/4 v0, 0x1

    :goto_3
    if-ge v0, p4, :cond_7

    .line 1065
    aget-object v2, p3, v0

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    .line 1066
    iget-object v4, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, p2, v2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/2addr v0, v3

    .line 1067
    aget-object v1, p3, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_7
    :goto_4
    if-nez v1, :cond_8

    .line 1073
    array-length p2, p3

    rem-int/2addr p2, v5

    if-nez p2, :cond_8

    .line 1075
    array-length p2, p3

    sub-int/2addr p2, v3

    aget-object v1, p3, p2

    :cond_8
    if-nez v1, :cond_9

    .line 1077
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_9
    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 1078
    :goto_5
    iget p2, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 749
    :sswitch_3
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/Function;->hexToRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 677
    :sswitch_4
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-static {p1}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v1

    goto/16 :goto_14

    :sswitch_5
    const-wide p1, 0x400921fb54442d18L    # Math.PI

    .line 643
    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 1106
    :pswitch_0
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    .line 1107
    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v0

    if-ne v0, v4, :cond_25

    .line 1108
    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1109
    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    .line 1110
    array-length p3, p2

    :goto_6
    if-ge v2, p3, :cond_25

    aget-object p4, p2, v2

    .line 1111
    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 1112
    invoke-static {v3}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 984
    :pswitch_1
    array-length v0, p3

    sub-int/2addr v0, v3

    const/4 v1, 0x1

    :goto_7
    if-ge v1, v0, :cond_c

    .line 985
    iget-object v2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/2addr v1, v3

    goto :goto_8

    :cond_b
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_c
    const/4 v1, -0x1

    :goto_8
    if-gez v1, :cond_d

    .line 991
    array-length p2, p3

    rem-int/2addr p2, v5

    if-nez p2, :cond_d

    .line 992
    array-length p2, p3

    add-int/lit8 v1, p2, -0x1

    :cond_d
    if-gez v1, :cond_e

    .line 994
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_9

    :cond_e
    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    .line 996
    :goto_9
    iget p2, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 1001
    :pswitch_2
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_f

    .line 1002
    invoke-static {p1, p3, p4, v5}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_a

    .line 1004
    :cond_f
    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1006
    :goto_a
    iget p2, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 1120
    :pswitch_3
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->cancelStatement(Lorg/h2/engine/Session;I)Z

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    goto/16 :goto_14

    .line 1022
    :pswitch_4
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    move-object v1, p2

    .line 1023
    :goto_b
    array-length p2, p3

    if-ge v2, p2, :cond_25

    .line 1024
    invoke-static {p1, p3, p4, v2}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p2

    .line 1025
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v0, :cond_12

    .line 1026
    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 1027
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v0, :cond_10

    goto :goto_c

    .line 1030
    :cond_10
    iget-object v0, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v1, p2}, Lorg/h2/engine/Database;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result v0

    .line 1031
    iget-object v3, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v3, v3, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v4, 0xdb

    if-ne v3, v4, :cond_11

    if-gez v0, :cond_11

    goto :goto_c

    .line 1033
    :cond_11
    iget-object v3, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v3, v3, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v4, 0xdc

    if-ne v3, v4, :cond_12

    if-lez v0, :cond_12

    :goto_c
    move-object v1, p2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1097
    :pswitch_5
    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result p1

    if-ne p1, v4, :cond_13

    .line 1098
    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    .line 1099
    array-length p1, p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 1101
    :cond_13
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_14

    .line 961
    :pswitch_6
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 957
    :pswitch_7
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 954
    :pswitch_8
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 950
    :pswitch_9
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 951
    invoke-static {}, Lorg/h2/util/Utils;->getMemoryUsed()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 946
    :pswitch_a
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 947
    invoke-static {}, Lorg/h2/util/Utils;->getMemoryFree()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 1011
    :goto_d
    :pswitch_b
    array-length v0, p3

    if-ge v2, v0, :cond_15

    .line 1012
    invoke-static {p1, p3, p4, v2}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    .line 1013
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v1, :cond_14

    .line 1014
    iget p1, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    goto :goto_e

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    :goto_e
    move-object v1, p2

    goto/16 :goto_14

    .line 938
    :pswitch_c
    iget p1, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 939
    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    .line 940
    iget-boolean p2, p2, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    iget p3, p0, Lorg/h2/expression/Function;->scale:I

    invoke-virtual {p1, p2, p3}, Lorg/h2/value/Value;->convertScale(ZI)Lorg/h2/value/Value;

    move-result-object p1

    .line 941
    invoke-virtual {p0}, Lorg/h2/expression/Function;->getPrecision()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v2}, Lorg/h2/value/Value;->convertPrecision(JZ)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 973
    :pswitch_d
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v0, :cond_17

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_f

    .line 977
    :cond_16
    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_10

    .line 975
    :cond_17
    :goto_f
    invoke-static {p1, p3, p4, v5}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    .line 979
    :goto_10
    iget p2, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 965
    :pswitch_e
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_18

    .line 966
    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p2

    .line 968
    :cond_18
    invoke-direct {p0, p2}, Lorg/h2/expression/Function;->convertResult(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 934
    :pswitch_f
    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getDiskSpaceUsed(Lorg/h2/engine/Session;Lorg/h2/value/Value;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    goto/16 :goto_14

    .line 931
    :pswitch_10
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 924
    :pswitch_11
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getDatabasePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    .line 925
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_1

    :cond_19
    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object p1

    goto/16 :goto_1

    .line 921
    :pswitch_12
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    goto/16 :goto_14

    .line 918
    :pswitch_13
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    goto/16 :goto_14

    .line 915
    :pswitch_14
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 912
    :pswitch_15
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastIdentity()Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 908
    :pswitch_16
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 903
    :pswitch_17
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 874
    :pswitch_18
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getIsoDayOfWeek(Ljava/util/Date;)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 871
    :pswitch_19
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getIsoWeek(Ljava/util/Date;)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 868
    :pswitch_1a
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getIsoYear(Ljava/util/Date;)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 864
    :pswitch_1b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 860
    :pswitch_1c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v4}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 856
    :pswitch_1d
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    const/16 p2, 0xd

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 852
    :pswitch_1e
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v5}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    sub-int/2addr p1, v3

    div-int/2addr p1, v4

    add-int/2addr p1, v3

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 892
    :pswitch_1f
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide p3

    .line 893
    invoke-static {p3, p4}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 895
    iget-object p3, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p3

    .line 896
    iget-boolean p3, p3, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lorg/h2/value/ValueTimestamp;->convertScale(ZI)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    goto/16 :goto_1

    .line 845
    :pswitch_20
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "MMMM"

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 847
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 841
    :pswitch_21
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v5}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 837
    :pswitch_22
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 833
    :pswitch_23
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    const/16 p2, 0xb

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 829
    :pswitch_24
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 825
    :pswitch_25
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 821
    :pswitch_26
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 814
    :pswitch_27
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "EEEE"

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 816
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 885
    :pswitch_28
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide p1

    .line 887
    invoke-static {p1, p2}, Lorg/h2/value/ValueTime;->fromMillis(J)Lorg/h2/value/ValueTime;

    move-result-object v1

    goto/16 :goto_14

    .line 878
    :pswitch_29
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide p1

    .line 880
    invoke-static {p1, p2}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object v1

    goto/16 :goto_14

    .line 810
    :pswitch_2a
    invoke-static {}, Lorg/h2/util/StringUtils;->xmlStartDoc()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 806
    :pswitch_2b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->xmlCData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 802
    :pswitch_2c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->xmlComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 797
    :pswitch_2d
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p2

    sget-object p3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 793
    :pswitch_2e
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v1

    goto/16 :goto_14

    .line 789
    :pswitch_2f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->javaDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 785
    :pswitch_30
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->javaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 756
    :pswitch_31
    :sswitch_6
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 781
    :pswitch_32
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 768
    :pswitch_33
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 769
    new-array p2, p1, [C

    sub-int/2addr p1, v3

    :goto_11
    if-ltz p1, :cond_1a

    const/16 p3, 0x20

    .line 771
    aput-char p3, p2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    .line 773
    :cond_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 764
    :pswitch_34
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/Function;->getSoundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 760
    :pswitch_35
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/Function;->rawToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    :pswitch_36
    const-wide/16 p3, 0x2

    .line 712
    invoke-static {p2}, Lorg/h2/expression/Function;->length(Lorg/h2/value/Value;)J

    move-result-wide p1

    mul-long p1, p1, p3

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    goto/16 :goto_14

    .line 716
    :pswitch_37
    :sswitch_7
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const-string v0, ""

    .line 719
    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_1b

    .line 721
    invoke-static {p1, p3, p4, v2}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :cond_1b
    move-object v1, p2

    .line 723
    :goto_12
    array-length p2, p3

    if-ge v2, p2, :cond_1f

    .line 724
    invoke-static {p1, p3, p4, v2}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p2

    .line 725
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v3, :cond_1c

    goto :goto_13

    .line 728
    :cond_1c
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v3, :cond_1d

    move-object v1, p2

    goto :goto_13

    .line 731
    :cond_1d
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 732
    invoke-static {v0}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {p2}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 734
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 736
    :cond_1e
    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p2, v1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 740
    :cond_1f
    iget-object p1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget p1, p1, Lorg/h2/expression/FunctionInfo;->type:I

    if-ne p1, v4, :cond_25

    if-eqz v0, :cond_25

    .line 741
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, p1, :cond_25

    const-string p1, ""

    .line 742
    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    .line 709
    :pswitch_38
    :sswitch_8
    invoke-static {p2}, Lorg/h2/expression/Function;->length(Lorg/h2/value/Value;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    goto/16 :goto_14

    .line 704
    :pswitch_39
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    goto/16 :goto_14

    :pswitch_3a
    const-wide/16 p3, 0x10

    .line 701
    invoke-static {p2}, Lorg/h2/expression/Function;->length(Lorg/h2/value/Value;)J

    move-result-wide p1

    mul-long p1, p1, p3

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    goto/16 :goto_14

    .line 692
    :pswitch_3b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_20

    .line 694
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_14

    .line 696
    :cond_20
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 630
    :pswitch_3c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 674
    :pswitch_3d
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 665
    :pswitch_3e
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 610
    :pswitch_3f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 688
    :pswitch_40
    invoke-static {}, Lorg/h2/value/ValueUuid;->getNewRandom()Lorg/h2/value/ValueUuid;

    move-result-object v1

    goto/16 :goto_14

    .line 685
    :pswitch_41
    invoke-static {v2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 681
    :pswitch_42
    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/tools/CompressTool;->expand([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v1

    goto/16 :goto_14

    .line 671
    :pswitch_43
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 668
    :pswitch_44
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 662
    :pswitch_45
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 659
    :pswitch_46
    invoke-virtual {p2}, Lorg/h2/value/Value;->getSignum()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    goto/16 :goto_14

    .line 656
    :pswitch_47
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->roundMagic(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    :pswitch_48
    if-eqz p2, :cond_21

    .line 650
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getRandom()Ljava/util/Random;

    move-result-object p3

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p3, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 652
    :cond_21
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getRandom()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 646
    :pswitch_49
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 640
    :pswitch_4a
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->log10(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 633
    :pswitch_4b
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->logIsLogBase10:Z

    if-eqz p1, :cond_22

    .line 634
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 636
    :cond_22
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 627
    :pswitch_4c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 624
    :pswitch_4d
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 621
    :pswitch_4e
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto/16 :goto_14

    .line 613
    :pswitch_4f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double v0, p1, p3

    if-eqz v0, :cond_23

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    div-double/2addr p3, p1

    .line 617
    invoke-static {p3, p4}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto :goto_14

    :cond_23
    const/16 p1, 0x55fc

    .line 615
    invoke-virtual {p0}, Lorg/h2/expression/Function;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 607
    :pswitch_50
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto :goto_14

    .line 604
    :pswitch_51
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto :goto_14

    .line 601
    :pswitch_52
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto :goto_14

    .line 598
    :pswitch_53
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto :goto_14

    .line 595
    :pswitch_54
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v1

    goto :goto_14

    .line 592
    :pswitch_55
    invoke-virtual {p2}, Lorg/h2/value/Value;->getSignum()I

    move-result p1

    if-ltz p1, :cond_24

    goto/16 :goto_e

    :cond_24
    invoke-virtual {p2}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object p2

    goto/16 :goto_e

    :cond_25
    :goto_14
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x16
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x21
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x40
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x46
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x4a
        :pswitch_32
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x4f
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x55
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x64
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x68
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_29
        :pswitch_28
        :pswitch_1f
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x7b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x96
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0xc8
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0xd4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0xdb
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0xe4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x1c -> :sswitch_4
        0x38 -> :sswitch_3
        0x3b -> :sswitch_6
        0x3d -> :sswitch_8
        0x5c -> :sswitch_7
        0xce -> :sswitch_2
        0xd1 -> :sswitch_1
        0xe2 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSoundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 2075
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    .line 2076
    new-array v2, v1, [C

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x30

    :goto_0
    if-ge v4, v0, :cond_4

    if-ge v5, v1, :cond_4

    .line 2079
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2080
    sget-object v8, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    array-length v8, v8

    if-le v7, v8, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    sget-object v8, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    aget-char v8, v8, v7

    :goto_1
    if-eqz v8, :cond_3

    if-nez v5, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 2084
    aput-char v7, v2, v5

    :goto_2
    move v5, v6

    :goto_3
    move v6, v8

    goto :goto_4

    :cond_1
    const/16 v7, 0x36

    if-gt v8, v7, :cond_2

    if-eq v8, v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    .line 2088
    aput-char v8, v2, v5

    goto :goto_2

    :cond_2
    const/16 v7, 0x37

    if-ne v8, v7, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2096
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method private getValueWithArgs(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/Value;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1177
    array-length v3, v2

    new-array v3, v3, [Lorg/h2/value/Value;

    .line 1178
    iget-object v4, v1, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v4, v4, Lorg/h2/expression/FunctionInfo;->nullIfParameterIsNull:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 1179
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 1180
    aget-object v6, v2, v4

    .line 1181
    invoke-virtual {v6, v0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v6

    .line 1182
    sget-object v7, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v6, v7, :cond_0

    .line 1183
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 1185
    :cond_0
    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1188
    :cond_1
    invoke-static {v0, v2, v3, v5}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v4

    .line 1189
    invoke-direct {v1, v0, v4, v2, v3}, Lorg/h2/expression/Function;->getSimpleValue(Lorg/h2/engine/Session;Lorg/h2/value/Value;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v6

    if-eqz v6, :cond_2

    return-object v6

    :cond_2
    const/4 v6, 0x1

    .line 1193
    invoke-static {v0, v2, v3, v6}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v7

    const/4 v8, 0x2

    .line 1194
    invoke-static {v0, v2, v3, v8}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v8

    const/4 v9, 0x3

    .line 1195
    invoke-static {v0, v2, v3, v9}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v9

    const/4 v10, 0x4

    .line 1196
    invoke-static {v0, v2, v3, v10}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v10

    const/4 v11, 0x5

    .line 1197
    invoke-static {v0, v2, v3, v11}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v11

    .line 1199
    iget-object v12, v1, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v12, v12, Lorg/h2/expression/FunctionInfo;->type:I

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    const/16 v17, 0x0

    sparse-switch v12, :sswitch_data_0

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v2, v2, Lorg/h2/expression/FunctionInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1658
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v5

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSchemaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v5

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->getVariable(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1625
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 1626
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 1627
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1629
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v4}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    :try_start_1
    invoke-static {v3, v0}, Lorg/h2/util/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1635
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto/16 :goto_40

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1638
    invoke-static {v0, v2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1461
    :sswitch_2
    invoke-static {}, Lorg/h2/engine/Constants;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1643
    :sswitch_3
    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v2, v3, v0}, Lorg/h2/value/Value;->convertPrecision(JZ)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1601
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/User;->checkAdmin()V

    .line 1602
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1603
    array-length v2, v2

    if-ne v2, v6, :cond_3

    const/4 v5, 0x1

    .line 1605
    :cond_3
    :try_start_3
    new-instance v2, Lorg/h2/util/AutoCloseInputStream;

    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/h2/util/AutoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_4

    .line 1608
    iget-object v4, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v4

    invoke-interface {v4, v2, v8, v9}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v2

    :goto_1
    move-object v7, v2

    goto :goto_3

    .line 1611
    :cond_4
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v4, :cond_5

    .line 1612
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 1614
    :cond_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1616
    :goto_2
    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v2

    invoke-interface {v2, v4, v8, v9}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v2

    goto :goto_1

    .line 1618
    :goto_3
    invoke-virtual {v0, v7}, Lorg/h2/engine/Session;->addTemporaryLob(Lorg/h2/value/Value;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_40

    :catch_1
    move-exception v0

    .line 1620
    invoke-static {v0, v3}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1595
    :sswitch_5
    aget-object v2, v2, v5

    check-cast v2, Lorg/h2/expression/Variable;

    .line 1596
    invoke-virtual {v2}, Lorg/h2/expression/Variable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    goto/16 :goto_40

    .line 1553
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 1554
    invoke-virtual {v0, v5}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v12

    .line 1555
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v12 .. v18}, Lorg/h2/table/LinkSchema;->linkSchema(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 1558
    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v7

    goto/16 :goto_40

    .line 1562
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/engine/User;->checkAdmin()V

    .line 1563
    invoke-virtual {v0, v5}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v5

    .line 1564
    new-instance v6, Lorg/h2/tools/Csv;

    invoke-direct {v6}, Lorg/h2/tools/Csv;-><init>()V

    if-nez v8, :cond_6

    move-object/from16 v8, v17

    goto :goto_4

    .line 1565
    :cond_6
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_7

    const/16 v12, 0x3d

    .line 1567
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_7

    .line 1568
    invoke-virtual {v6, v8}, Lorg/h2/tools/Csv;->setOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    :cond_7
    if-nez v9, :cond_8

    move-object/from16 v9, v17

    goto :goto_5

    .line 1571
    :cond_8
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    if-nez v10, :cond_9

    move-object/from16 v10, v17

    goto :goto_6

    .line 1572
    :cond_9
    invoke-virtual {v10}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v10

    :goto_6
    if-nez v11, :cond_a

    move-object/from16 v11, v17

    :goto_7
    const/4 v12, 0x6

    goto :goto_8

    .line 1573
    :cond_a
    invoke-virtual {v11}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    .line 1574
    :goto_8
    invoke-static {v0, v2, v3, v12}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v12

    if-nez v12, :cond_b

    move-object/from16 v12, v17

    goto :goto_9

    .line 1575
    :cond_b
    invoke-virtual {v12}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v12

    :goto_9
    const/4 v13, 0x7

    .line 1576
    invoke-static {v0, v2, v3, v13}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_a
    move-object/from16 v0, v17

    goto :goto_b

    .line 1577
    :cond_c
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_a

    .line 1578
    :goto_b
    invoke-static {v6, v9, v10, v11}, Lorg/h2/expression/Function;->setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v6, v12}, Lorg/h2/tools/Csv;->setNullString(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    .line 1582
    invoke-virtual {v6, v0}, Lorg/h2/tools/Csv;->setLineSeparator(Ljava/lang/String;)V

    .line 1586
    :cond_d
    :goto_c
    :try_start_4
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v0, v2, v8}, Lorg/h2/tools/Csv;->write(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1588
    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_40

    :catch_2
    move-exception v0

    .line 1590
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1522
    :sswitch_8
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_e

    move-object/from16 v5, v17

    goto :goto_d

    .line 1523
    :cond_e
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v5

    .line 1524
    :goto_d
    new-instance v7, Lorg/h2/tools/Csv;

    invoke-direct {v7}, Lorg/h2/tools/Csv;-><init>()V

    if-nez v8, :cond_f

    move-object/from16 v8, v17

    goto :goto_e

    .line 1525
    :cond_f
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    :goto_e
    if-eqz v8, :cond_10

    const/16 v12, 0x3d

    .line 1527
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_10

    .line 1528
    invoke-virtual {v7, v8}, Lorg/h2/tools/Csv;->setOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_15

    :cond_10
    if-nez v9, :cond_11

    move-object/from16 v9, v17

    goto :goto_f

    .line 1531
    :cond_11
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v9

    :goto_f
    if-nez v10, :cond_12

    move-object/from16 v10, v17

    goto :goto_10

    .line 1532
    :cond_12
    invoke-virtual {v10}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v10

    :goto_10
    if-nez v11, :cond_13

    move-object/from16 v11, v17

    :goto_11
    const/4 v12, 0x6

    goto :goto_12

    .line 1533
    :cond_13
    invoke-virtual {v11}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v11

    goto :goto_11

    .line 1534
    :goto_12
    invoke-static {v0, v2, v3, v12}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_13
    move-object/from16 v0, v17

    goto :goto_14

    .line 1535
    :cond_14
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_13

    .line 1536
    :goto_14
    invoke-static {v7, v9, v10, v11}, Lorg/h2/expression/Function;->setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v7, v0}, Lorg/h2/tools/Csv;->setNullString(Ljava/lang/String;)V

    .line 1540
    :goto_15
    invoke-virtual {v7}, Lorg/h2/tools/Csv;->getFieldSeparatorRead()C

    move-result v0

    .line 1541
    invoke-static {v5, v0, v6}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 1544
    :try_start_5
    invoke-virtual {v7, v4, v0, v8}, Lorg/h2/tools/Csv;->read(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v7
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_40

    :catch_3
    move-exception v0

    .line 1548
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1517
    :sswitch_9
    invoke-direct {v1, v0, v4, v7}, Lorg/h2/expression/Function;->getSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;Lorg/h2/value/Value;)Lorg/h2/schema/Sequence;

    move-result-object v0

    .line 1518
    invoke-virtual {v0}, Lorg/h2/schema/Sequence;->getCurrentValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto/16 :goto_40

    .line 1511
    :sswitch_a
    invoke-direct {v1, v0, v4, v7}, Lorg/h2/expression/Function;->getSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;Lorg/h2/value/Value;)Lorg/h2/schema/Sequence;

    move-result-object v2

    .line 1512
    new-instance v3, Lorg/h2/expression/SequenceValue;

    invoke-direct {v3, v2}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    .line 1513
    invoke-virtual {v3, v0}, Lorg/h2/expression/SequenceValue;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1507
    :sswitch_b
    iget-object v0, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v4, v7}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_15
    move-object v7, v4

    goto/16 :goto_40

    .line 1493
    :sswitch_c
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v4, v0, :cond_1b

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v0, :cond_16

    goto :goto_1a

    :cond_16
    if-nez v8, :cond_17

    :goto_16
    move-object/from16 v0, v17

    goto :goto_17

    .line 1496
    :cond_17
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v8, v0, :cond_18

    goto :goto_16

    :cond_18
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    if-nez v9, :cond_19

    :goto_18
    move-object/from16 v2, v17

    goto :goto_19

    .line 1498
    :cond_19
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v9, v2, :cond_1a

    goto :goto_18

    :cond_1a
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_18

    .line 1500
    :goto_19
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Lorg/h2/util/DateTimeUtils;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1502
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1494
    :cond_1b
    :goto_1a
    sget-object v7, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_40

    .line 1479
    :sswitch_d
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v4, v0, :cond_21

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v0, :cond_1c

    goto :goto_1f

    :cond_1c
    if-nez v8, :cond_1d

    :goto_1b
    move-object/from16 v0, v17

    goto :goto_1c

    .line 1482
    :cond_1d
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v8, v0, :cond_1e

    goto :goto_1b

    :cond_1e
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    if-nez v9, :cond_1f

    :goto_1d
    move-object/from16 v2, v17

    goto :goto_1e

    .line 1484
    :cond_1f
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v9, v2, :cond_20

    goto :goto_1d

    :cond_20
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1d

    .line 1486
    :goto_1e
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Lorg/h2/util/DateTimeUtils;->formatDateTime(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1480
    :cond_21
    :goto_1f
    sget-object v7, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_40

    .line 1473
    :sswitch_e
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/Function;->getDatePart(Ljava/lang/String;)I

    move-result v0

    .line 1474
    invoke-virtual {v7}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    goto/16 :goto_40

    .line 1469
    :sswitch_f
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->datediff(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/sql/Timestamp;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto/16 :goto_40

    .line 1465
    :sswitch_10
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lorg/h2/expression/Function;->dateadd(Ljava/lang/String;JLjava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1450
    :sswitch_11
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/util/DateTimeUtils;->addMonths(Ljava/sql/Timestamp;I)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1446
    :sswitch_12
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_22

    :goto_20
    move-object/from16 v2, v17

    goto :goto_21

    :cond_22
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_20

    :goto_21
    invoke-static {v0, v2}, Lorg/h2/util/ToDateParser;->toTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1442
    :sswitch_13
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_23

    :goto_22
    move-object/from16 v2, v17

    goto :goto_23

    :cond_23
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_22

    :goto_23
    invoke-static {v0, v2}, Lorg/h2/util/ToDateParser;->toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1411
    :sswitch_14
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_24

    move-object/from16 v2, v17

    goto :goto_24

    :cond_24
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_24
    if-nez v8, :cond_25

    :goto_25
    move-object/from16 v3, v17

    goto :goto_26

    :cond_25
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_25

    :goto_26
    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->oraHash(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto/16 :goto_40

    .line 1453
    :sswitch_15
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lorg/h2/expression/Function;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1416
    :sswitch_16
    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1437
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1420
    :pswitch_0
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    if-nez v7, :cond_26

    move-object/from16 v2, v17

    goto :goto_27

    :cond_26
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_27
    if-nez v8, :cond_27

    :goto_28
    move-object/from16 v3, v17

    goto :goto_29

    :cond_27
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_28

    :goto_29
    invoke-static {v0, v2, v3}, Lorg/h2/util/ToChar;->toChar(Ljava/sql/Timestamp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1431
    :pswitch_1
    invoke-virtual {v4}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v7, :cond_28

    move-object/from16 v2, v17

    goto :goto_2a

    :cond_28
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    if-nez v8, :cond_29

    :goto_2b
    move-object/from16 v3, v17

    goto :goto_2c

    :cond_29
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2b

    :goto_2c
    invoke-static {v0, v2, v3}, Lorg/h2/util/ToChar;->toChar(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1406
    :sswitch_17
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-nez v8, :cond_2a

    :goto_2d
    move-object/from16 v3, v17

    goto :goto_2e

    :cond_2a
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2d

    :goto_2e
    invoke-static {v0, v2, v3, v5}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1401
    :sswitch_18
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-nez v8, :cond_2b

    :goto_2f
    move-object/from16 v3, v17

    goto :goto_30

    :cond_2b
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2f

    :goto_30
    invoke-static {v0, v2, v3, v6}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1382
    :sswitch_19
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1383
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x5609

    .line 1385
    :try_start_6
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v7, v0

    goto/16 :goto_40

    :catch_4
    move-exception v0

    .line 1395
    new-array v2, v6, [Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v7, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_5
    move-exception v0

    .line 1392
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-static {v7, v0, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_6
    move-exception v0

    .line 1389
    new-array v2, v6, [Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v7, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_1a
    if-nez v7, :cond_2c

    .line 1648
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1652
    :cond_2c
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    :sswitch_1b
    if-nez v7, :cond_2d

    :goto_31
    move-object/from16 v0, v17

    goto :goto_32

    .line 1370
    :cond_2d
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_32
    if-nez v8, :cond_2f

    :goto_33
    move-object/from16 v2, v17

    goto :goto_34

    .line 1372
    :cond_2f
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v8, v2, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_33

    :goto_34
    if-nez v9, :cond_31

    goto :goto_35

    .line 1374
    :cond_31
    invoke-virtual {v9}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1376
    :goto_35
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2, v6}, Lorg/h2/util/StringUtils;->xmlNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1365
    :sswitch_1c
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->xmlAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1340
    :sswitch_1d
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_32

    const-string v2, " "

    goto :goto_36

    :cond_32
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_36
    invoke-static {v0, v6, v6, v2}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1362
    :sswitch_1e
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lorg/h2/expression/Function;->locate(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    goto/16 :goto_40

    .line 1351
    :sswitch_1f
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-gez v2, :cond_33

    .line 1354
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    :cond_33
    if-nez v8, :cond_34

    .line 1356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_37

    :cond_34
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    .line 1357
    :goto_37
    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1345
    :sswitch_20
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_35

    const-string v2, " "

    goto :goto_38

    :cond_35
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_38
    invoke-static {v0, v5, v6, v2}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1331
    :sswitch_21
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/expression/Function;->right(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1323
    :sswitch_22
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    if-nez v8, :cond_36

    const-string v3, ""

    goto :goto_39

    .line 1325
    :cond_36
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1326
    :goto_39
    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1317
    :sswitch_23
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1318
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/h2/expression/Function;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1335
    :sswitch_24
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_37

    const-string v2, " "

    goto :goto_3a

    :cond_37
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_3a
    invoke-static {v0, v6, v5, v2}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    :sswitch_25
    if-nez v8, :cond_38

    goto :goto_3b

    .line 1307
    :cond_38
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    .line 1308
    :goto_3b
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lorg/h2/expression/Function;->locate(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    goto/16 :goto_40

    .line 1303
    :sswitch_26
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/expression/Function;->left(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    :sswitch_27
    if-nez v8, :cond_39

    goto :goto_3c

    .line 1312
    :cond_39
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    .line 1313
    :goto_3c
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lorg/h2/expression/Function;->locate(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    goto/16 :goto_40

    .line 1293
    :sswitch_28
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v7, v0, :cond_43

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v8, v0, :cond_3a

    goto/16 :goto_40

    .line 1296
    :cond_3a
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lorg/h2/expression/Function;->insert(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_40

    .line 1289
    :sswitch_29
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/expression/Function;->getDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    goto/16 :goto_40

    :sswitch_2a
    if-eqz v7, :cond_3b

    .line 1282
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    :cond_3b
    move-object/from16 v0, v17

    .line 1284
    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object v2

    invoke-virtual {v4}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/h2/tools/CompressTool;->compress([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_40

    .line 1276
    :sswitch_2b
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->decrypt(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_40

    .line 1272
    :sswitch_2c
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->encrypt(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_40

    .line 1268
    :sswitch_2d
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->getHash(Ljava/lang/String;[BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_40

    .line 1231
    :sswitch_2e
    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v2, 0xe

    const/16 v3, 0xc

    const/16 v6, 0xd

    const/16 v8, 0xb

    if-ne v0, v8, :cond_3c

    .line 1232
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    .line 1233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1234
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1235
    invoke-virtual {v4, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 1236
    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1237
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1238
    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1239
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1240
    :cond_3c
    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v9, 0xa

    if-ne v0, v9, :cond_3d

    .line 1241
    check-cast v4, Lorg/h2/value/ValueDate;

    .line 1242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1243
    invoke-virtual {v4}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1244
    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 1245
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1246
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1247
    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1248
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1249
    :cond_3d
    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v0

    if-ne v0, v6, :cond_3e

    .line 1250
    check-cast v4, Lorg/h2/value/ValueString;

    .line 1251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1252
    invoke-virtual {v4}, Lorg/h2/value/ValueString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/ValueTimestamp;->getDate()Ljava/sql/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1253
    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 1254
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1255
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1256
    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1257
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_40

    .line 1259
    :cond_3e
    invoke-virtual {v4}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    if-nez v7, :cond_3f

    goto :goto_3d

    .line 1260
    :cond_3f
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    :goto_3d
    int-to-double v4, v5

    .line 1261
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v6, v2, v4

    const-wide/16 v8, 0x0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_40

    .line 1263
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_3e

    :cond_40
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_3e
    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v7

    goto/16 :goto_40

    :sswitch_2f
    if-nez v7, :cond_41

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_3f

    .line 1226
    :cond_41
    invoke-virtual {v7}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1227
    :goto_3f
    invoke-virtual {v4}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v4

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v7

    goto :goto_40

    .line 1222
    :sswitch_30
    invoke-virtual {v4}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v7

    goto :goto_40

    .line 1214
    :sswitch_31
    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_42

    .line 1218
    invoke-virtual {v4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto :goto_40

    :cond_42
    const/16 v0, 0x55fc

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lorg/h2/expression/Function;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1211
    :sswitch_32
    invoke-virtual {v4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto :goto_40

    .line 1208
    :sswitch_33
    invoke-virtual {v4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto :goto_40

    .line 1205
    :sswitch_34
    invoke-virtual {v4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto :goto_40

    .line 1201
    :sswitch_35
    invoke-virtual {v4}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v7

    :cond_43
    :goto_40
    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_35
        0x5 -> :sswitch_34
        0x6 -> :sswitch_33
        0x7 -> :sswitch_32
        0x10 -> :sswitch_31
        0x12 -> :sswitch_30
        0x15 -> :sswitch_2f
        0x1b -> :sswitch_2e
        0x1d -> :sswitch_2d
        0x1e -> :sswitch_2c
        0x1f -> :sswitch_2b
        0x20 -> :sswitch_2a
        0x37 -> :sswitch_29
        0x39 -> :sswitch_28
        0x3a -> :sswitch_27
        0x3c -> :sswitch_26
        0x3e -> :sswitch_25
        0x3f -> :sswitch_24
        0x42 -> :sswitch_23
        0x43 -> :sswitch_22
        0x44 -> :sswitch_21
        0x45 -> :sswitch_20
        0x48 -> :sswitch_1f
        0x49 -> :sswitch_1f
        0x4d -> :sswitch_1e
        0x4e -> :sswitch_1d
        0x53 -> :sswitch_1c
        0x54 -> :sswitch_1b
        0x58 -> :sswitch_1a
        0x59 -> :sswitch_19
        0x5a -> :sswitch_18
        0x5b -> :sswitch_17
        0x5d -> :sswitch_16
        0x5e -> :sswitch_15
        0x5f -> :sswitch_14
        0x60 -> :sswitch_13
        0x61 -> :sswitch_12
        0x62 -> :sswitch_11
        0x66 -> :sswitch_10
        0x67 -> :sswitch_f
        0x78 -> :sswitch_e
        0x79 -> :sswitch_d
        0x7a -> :sswitch_c
        0xcd -> :sswitch_b
        0xcf -> :sswitch_a
        0xd0 -> :sswitch_9
        0xd2 -> :sswitch_8
        0xd3 -> :sswitch_7
        0xda -> :sswitch_6
        0xde -> :sswitch_5
        0xe1 -> :sswitch_4
        0xe3 -> :sswitch_3
        0xe7 -> :sswitch_2
        0xe8 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static hexToRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1978
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1979
    rem-int/lit8 v1, v0, 0x4

    const/16 v2, 0x5602

    if-nez v1, :cond_1

    .line 1982
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x4

    .line 1985
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    .line 1986
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    .line 1988
    :catch_0
    invoke-static {v2, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 1991
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1980
    :cond_1
    invoke-static {v2, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static insert(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    if-nez p3, :cond_1

    return-object p0

    .line 1964
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1965
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    if-lez p2, :cond_4

    if-eqz v1, :cond_4

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    add-int v1, p1, p2

    if-le v1, v0, :cond_3

    sub-int p2, v0, p1

    .line 1973
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static isDatePart(Ljava/lang/String;)Z
    .locals 1

    .line 1756
    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1951
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 1952
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 1954
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static length(Lorg/h2/value/Value;)J
    .locals 2

    .line 1703
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1710
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 1708
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static locate(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    if-gez p2, :cond_0

    .line 1932
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1933
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 1936
    :goto_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static strictfp log10(D)D
    .locals 2

    .line 579
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/h2/expression/Function;->roundMagic(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static oraHash(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 2100
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    if-eqz p2, :cond_0

    .line 2101
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x11

    mul-int p0, p0, p2

    :cond_0
    if-eqz p1, :cond_2

    .line 2104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 2107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    .line 2109
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static rawToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1918
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1921
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1922
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    const/16 v5, 0x30

    .line 1923
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1925
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1927
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    .line 1912
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    .line 1914
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1890
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 1894
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1896
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1898
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1905
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1902
    :cond_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v1, v3, v2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1942
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1943
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 1945
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static roundMagic(D)D
    .locals 4

    const-wide v0, 0x3d3c25c268497682L    # 1.0E-13

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide v0, -0x42c3da3d97b6897eL    # -1.0E-13

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-wide v0, 0x426d1a94a2000000L    # 1.0E12

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_7

    const-wide v0, -0x3d92e56b5e000000L    # -1.0E12

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    goto/16 :goto_1

    .line 2046
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    return-wide p0

    .line 2051
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    return-wide p0

    .line 2055
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v3, v1, -0x3

    if-le v2, v3, :cond_4

    return-wide p0

    :cond_4
    add-int/lit8 p0, v1, -0x2

    .line 2058
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 p0, v1, -0x2

    .line 2060
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    add-int/lit8 p1, v1, -0x3

    .line 2061
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    add-int/lit8 v2, v1, -0x4

    .line 2062
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne p0, v3, :cond_5

    if-ne p1, v3, :cond_5

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    .line 2064
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x39

    if-ne p0, v3, :cond_6

    if-ne p1, v3, :cond_6

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, -0x1

    .line 2066
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2067
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2069
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2071
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_7
    :goto_1
    return-wide p0
.end method

.method private static setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2673
    invoke-virtual {p0, p1}, Lorg/h2/tools/Csv;->setFieldSeparatorWrite(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2675
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2676
    invoke-virtual {p0, p1}, Lorg/h2/tools/Csv;->setFieldSeparatorRead(C)V

    :cond_0
    if-eqz p2, :cond_2

    .line 2680
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2682
    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/tools/Csv;->setFieldDelimiter(C)V

    :cond_2
    if-eqz p3, :cond_4

    .line 2685
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2687
    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/tools/Csv;->setEscapeCharacter(C)V

    :cond_4
    return-void
.end method

.method private static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1871
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    add-int v1, p1, p2

    if-le v1, v0, :cond_3

    sub-int p2, v0, p1

    :cond_3
    add-int/2addr p2, p1

    .line 1883
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2009
    invoke-static {p0}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2017
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2018
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move-object v4, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    .line 2019
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2020
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    if-nez v4, :cond_2

    .line 2023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-lez v0, :cond_2

    .line 2025
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-ge v6, v2, :cond_3

    .line 2029
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_3
    if-eqz v4, :cond_4

    .line 2033
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    goto :goto_2

    .line 2036
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_7
    :goto_3
    return-object p0
.end method


# virtual methods
.method protected checkParameterCount(I)V
    .locals 7

    .line 2135
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    sparse-switch v0, :sswitch_data_0

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const/4 v3, 0x1

    :goto_0
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_4
    const/4 v3, 0x2

    :goto_1
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_5
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_6
    const/4 v3, 0x1

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_7
    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_2
    :sswitch_8
    if-lt p1, v3, :cond_0

    if-gt p1, v6, :cond_0

    const/4 p1, 0x1

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x1b59

    .line 2206
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v1, v1, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x1b -> :sswitch_6
        0x20 -> :sswitch_6
        0x36 -> :sswitch_5
        0x3a -> :sswitch_4
        0x3e -> :sswitch_4
        0x3f -> :sswitch_6
        0x43 -> :sswitch_4
        0x45 -> :sswitch_6
        0x48 -> :sswitch_4
        0x49 -> :sswitch_4
        0x4e -> :sswitch_6
        0x54 -> :sswitch_3
        0x58 -> :sswitch_6
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_2
        0x5f -> :sswitch_2
        0x60 -> :sswitch_2
        0x61 -> :sswitch_6
        0x70 -> :sswitch_7
        0x77 -> :sswitch_7
        0x79 -> :sswitch_1
        0x7a -> :sswitch_1
        0xcc -> :sswitch_0
        0xce -> :sswitch_8
        0xcf -> :sswitch_6
        0xd0 -> :sswitch_6
        0xd2 -> :sswitch_0
        0xd3 -> :sswitch_5
        0xdb -> :sswitch_0
        0xdc -> :sswitch_0
        0xe1 -> :sswitch_6
        0xe5 -> :sswitch_8
    .end sparse-switch
.end method

.method public doneWithParameters()V
    .locals 5

    .line 2219
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2220
    iget-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2221
    invoke-virtual {p0, v0}, Lorg/h2/expression/Function;->checkParameterCount(I)V

    .line 2222
    new-array v0, v0, [Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    .line 2223
    iget-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2224
    iput-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    goto :goto_0

    .line 2226
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 2227
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1b59

    const/4 v2, 0x2

    .line 2228
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v4, v4, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public getArgs()[Lorg/h2/expression/Expression;
    .locals 1

    .line 2693
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getCost()I
    .locals 5

    .line 2724
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2726
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getCost()I

    move-result v4

    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getDisplaySize()I
    .locals 5

    .line 2480
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2481
    invoke-direct {p0}, Lorg/h2/expression/Function;->calculatePrecisionAndDisplaySize()V

    .line 2483
    :cond_0
    iget v0, p0, Lorg/h2/expression/Function;->displaySize:I

    return v0
.end method

.method public getFunctionType()I
    .locals 1

    .line 2613
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2618
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v0, v0, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 5

    .line 2472
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2473
    invoke-direct {p0}, Lorg/h2/expression/Function;->calculatePrecisionAndDisplaySize()V

    .line 2475
    :cond_0
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 11

    .line 2554
    new-instance v0, Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v1, v1, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 2555
    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xce

    if-ne v1, v4, :cond_3

    .line 2556
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 2557
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 2559
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v1

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_1

    const-string v4, " WHEN "

    .line 2560
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const-string v4, " THEN "

    .line 2561
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 2563
    :cond_1
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const-string v1, " ELSE "

    .line 2564
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v4, v4

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_2
    const-string v1, " END"

    .line 2566
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, 0x28

    .line 2568
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 2569
    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v4, 0x78

    if-eq v1, v4, :cond_5

    packed-switch v1, :pswitch_data_0

    .line 2594
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 2595
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2571
    :pswitch_0
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    new-instance v9, Lorg/h2/table/Column;

    const/4 v3, 0x0

    iget v4, p0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    iget v7, p0, Lorg/h2/expression/Function;->scale:I

    iget v8, p0, Lorg/h2/expression/Function;->displaySize:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v9}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto/16 :goto_2

    .line 2577
    :pswitch_1
    iget-object v1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->swapConvertFunctionParameters:Z

    const/16 v2, 0x2c

    if-eqz v1, :cond_4

    .line 2578
    new-instance v1, Lorg/h2/table/Column;

    const/4 v5, 0x0

    iget v6, p0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v7, p0, Lorg/h2/expression/Function;->precision:J

    iget v9, p0, Lorg/h2/expression/Function;->scale:I

    iget v10, p0, Lorg/h2/expression/Function;->displaySize:I

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v1}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    .line 2582
    :cond_4
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    new-instance v9, Lorg/h2/table/Column;

    const/4 v3, 0x0

    iget v4, p0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    iget v7, p0, Lorg/h2/expression/Function;->scale:I

    iget v8, p0, Lorg/h2/expression/Function;->displaySize:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v9}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    .line 2589
    :cond_5
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v3

    check-cast v1, Lorg/h2/expression/ValueExpression;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    check-cast v1, Lorg/h2/value/ValueString;

    .line 2590
    invoke-virtual {v1}, Lorg/h2/value/ValueString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v3, " FROM "

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_6
    :goto_2
    const/16 v1, 0x29

    .line 2600
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScale()I
    .locals 1

    .line 2467
    iget v0, p0, Lorg/h2/expression/Function;->scale:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 2115
    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    invoke-direct {p0, p1, v0}, Lorg/h2/expression/Function;->getValueWithArgs(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;
    .locals 12

    .line 2624
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    .line 2667
    invoke-direct {p0, p1, p2}, Lorg/h2/expression/Function;->getValueWithArgs(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueResultSet;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2626
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2630
    array-length v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    aget-object v2, p2, v3

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 2632
    :goto_0
    new-instance v6, Lorg/h2/tools/Csv;

    invoke-direct {v6}, Lorg/h2/tools/Csv;-><init>()V

    .line 2633
    array-length v7, p2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    aget-object v4, p2, v4

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    const/16 v7, 0x3d

    .line 2636
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 2637
    invoke-virtual {v6, v4}, Lorg/h2/tools/Csv;->setOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 2640
    :cond_3
    array-length v7, p2

    const/4 v9, 0x4

    if-ge v7, v9, :cond_4

    move-object v7, v5

    goto :goto_2

    :cond_4
    aget-object v7, p2, v8

    invoke-virtual {v7, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v7

    .line 2642
    :goto_2
    array-length v8, p2

    const/4 v10, 0x5

    if-ge v8, v10, :cond_5

    move-object v8, v5

    goto :goto_3

    :cond_5
    aget-object v8, p2, v9

    invoke-virtual {v8, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    .line 2644
    :goto_3
    array-length v9, p2

    const/4 v11, 0x6

    if-ge v9, v11, :cond_6

    move-object p1, v5

    goto :goto_4

    :cond_6
    aget-object p2, p2, v10

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    .line 2646
    :goto_4
    invoke-static {v6, v7, v8, p1}, Lorg/h2/expression/Function;->setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    :goto_5
    invoke-virtual {v6}, Lorg/h2/tools/Csv;->getFieldSeparatorRead()C

    move-result p1

    .line 2650
    invoke-static {v2, p1, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    .line 2654
    :try_start_0
    invoke-virtual {v6, v1, p1, v4}, Lorg/h2/tools/Csv;->read(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2655
    :try_start_1
    invoke-static {p1, v0}, Lorg/h2/value/ValueResultSet;->getCopy(Ljava/sql/ResultSet;I)Lorg/h2/value/ValueResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2659
    invoke-virtual {v6}, Lorg/h2/tools/Csv;->close()V

    .line 2660
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v5, p1

    goto :goto_7

    :catch_0
    move-exception p2

    move-object v5, p1

    goto :goto_6

    :catchall_1
    move-exception p2

    goto :goto_7

    :catch_1
    move-exception p2

    .line 2657
    :goto_6
    :try_start_2
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2659
    :goto_7
    invoke-virtual {v6}, Lorg/h2/tools/Csv;->close()V

    .line 2660
    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw p2

    :cond_7
    const p1, 0x15f9c

    const-string p2, "fileName"

    .line 2628
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isBufferResultSetToLocalTemp()Z
    .locals 1

    .line 2739
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v0, v0, Lorg/h2/expression/FunctionInfo;->bufferResultSetToLocalTemp:Z

    return v0
.end method

.method public isDeterministic()Z
    .locals 1

    .line 2734
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v0, v0, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    .line 2698
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2699
    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2703
    :cond_1
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2707
    :pswitch_0
    iget-object p1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean p1, p1, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 4

    .line 2120
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2122
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2244
    iget-object v2, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v2, v2, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .line 2245
    :goto_0
    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 2246
    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_1

    .line 2250
    :cond_0
    invoke-virtual {v5, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v5

    .line 2251
    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aput-object v5, v6, v2

    .line 2252
    invoke-virtual {v5}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2258
    :cond_2
    iget-object v2, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v2, v2

    const/4 v5, 0x1

    if-ge v2, v5, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v3

    .line 2259
    :goto_2
    iget-object v6, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v6, v6, Lorg/h2/expression/FunctionInfo;->type:I

    const/4 v10, 0x4

    const/16 v14, 0xb

    const/16 v15, 0xd

    if-eqz v6, :cond_13

    if-eq v6, v15, :cond_13

    const/16 v7, 0x15

    if-eq v6, v7, :cond_13

    const/16 v8, 0x1b

    if-eq v6, v8, :cond_11

    const/16 v8, 0xde

    if-eq v6, v8, :cond_f

    const/16 v2, 0xe1

    const/16 v8, 0x10

    if-eq v6, v2, :cond_d

    const-wide/16 v9, 0x0

    const/4 v2, 0x2

    packed-switch v6, :pswitch_data_0

    const/4 v14, -0x1

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    .line 2434
    iget-object v2, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v7, v2, Lorg/h2/expression/FunctionInfo;->dataType:I

    .line 2435
    invoke-static {v7}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    const-wide/16 v8, -0x1

    .line 2438
    iget v2, v2, Lorg/h2/value/DataType;->defaultScale:I

    :goto_3
    move/from16 v16, v4

    :goto_4
    move v4, v2

    goto/16 :goto_12

    .line 2337
    :pswitch_0
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_4

    packed-switch v3, :pswitch_data_4

    .line 2345
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getType()I

    move-result v6

    invoke-static {v3, v6}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v3

    :goto_5
    move v7, v3

    goto :goto_6

    .line 2342
    :cond_4
    :pswitch_1
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    goto :goto_5

    .line 2348
    :goto_6
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2349
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2350
    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v6, v5

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getScale()I

    move-result v5

    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v6, v2

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getScale()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :pswitch_2
    move/from16 v16, v4

    goto/16 :goto_a

    :pswitch_3
    move/from16 v16, v4

    goto/16 :goto_b

    .line 2298
    :pswitch_4
    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v6, v6

    move-wide v11, v9

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v7, v6, :cond_6

    .line 2299
    iget-object v13, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v13, v13, v7

    .line 2300
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v15

    if-eq v13, v15, :cond_5

    .line 2301
    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getType()I

    move-result v15

    if-eq v15, v14, :cond_5

    if-eqz v15, :cond_5

    .line 2303
    invoke-static {v8, v15}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v8

    .line 2304
    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getScale()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v16, v4

    .line 2305
    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2306
    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-wide v11, v3

    goto :goto_8

    :cond_5
    move/from16 v16, v4

    :goto_8
    add-int/lit8 v7, v7, 0x2

    move/from16 v4, v16

    const/4 v3, 0x0

    const/16 v15, 0xd

    goto :goto_7

    :cond_6
    move/from16 v16, v4

    .line 2310
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v3, v3

    rem-int/2addr v3, v2

    if-nez v3, :cond_7

    .line 2311
    iget-object v2, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v3, v3

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    .line 2312
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 2313
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    if-eq v3, v14, :cond_7

    if-eqz v3, :cond_7

    .line 2315
    invoke-static {v8, v3}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v3

    .line 2316
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getScale()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2317
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v5

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2318
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v3

    move v3, v4

    move-wide v8, v5

    goto :goto_9

    :cond_7
    move v7, v8

    move v3, v9

    move v2, v10

    move-wide v8, v11

    :goto_9
    if-ne v7, v14, :cond_14

    goto/16 :goto_d

    .line 2356
    :goto_a
    iget v7, v0, Lorg/h2/expression/Function;->dataType:I

    .line 2357
    iget-wide v8, v0, Lorg/h2/expression/Function;->precision:J

    .line 2358
    iget v3, v0, Lorg/h2/expression/Function;->scale:I

    .line 2359
    iget v2, v0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_11

    :pswitch_5
    move/from16 v16, v4

    .line 2331
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v7

    .line 2332
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2333
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2334
    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v4

    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getScale()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_4

    .line 2269
    :goto_b
    iget-object v2, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v3, v2

    move-wide v8, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_c
    if-ge v4, v3, :cond_9

    aget-object v10, v2, v4

    .line 2270
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v11

    if-eq v10, v11, :cond_8

    .line 2271
    invoke-virtual {v10}, Lorg/h2/expression/Expression;->getType()I

    move-result v11

    if-eq v11, v14, :cond_8

    if-eqz v11, :cond_8

    .line 2273
    invoke-static {v7, v11}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v7

    .line 2274
    invoke-virtual {v10}, Lorg/h2/expression/Expression;->getScale()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2275
    invoke-virtual {v10}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2276
    invoke-virtual {v10}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_9
    if-ne v7, v14, :cond_a

    :goto_d
    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/16 v7, 0xd

    goto :goto_f

    :cond_a
    move v4, v5

    move v3, v6

    goto/16 :goto_12

    :pswitch_6
    move/from16 v16, v4

    .line 2417
    iget-object v3, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v7, v3, Lorg/h2/expression/FunctionInfo;->dataType:I

    .line 2418
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v11

    .line 2420
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2423
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v5

    const-wide/16 v13, 0x1

    sub-long/2addr v5, v13

    sub-long/2addr v11, v5

    .line 2425
    :cond_b
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v3, v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_c

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2427
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 2429
    :cond_c
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2430
    invoke-static {v8, v9}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v3

    goto/16 :goto_12

    :cond_d
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 2405
    iget-object v2, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v2, v2

    if-ne v2, v5, :cond_e

    const/16 v2, 0xf

    const/16 v7, 0xf

    goto :goto_e

    :cond_e
    const/16 v7, 0x10

    :goto_e
    const v3, 0x7fffffff

    :goto_f
    const-wide/32 v8, 0x7fffffff

    goto :goto_12

    :cond_f
    move/from16 v16, v4

    .line 2393
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v5

    .line 2394
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v7

    .line 2395
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    .line 2396
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getScale()I

    move-result v4

    .line 2397
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    .line 2398
    instance-of v5, v2, Lorg/h2/expression/Variable;

    if-eqz v5, :cond_10

    goto :goto_12

    :cond_10
    const v1, 0x16019

    .line 2399
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_11
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 2362
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v7

    .line 2363
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getScale()I

    move-result v3

    .line 2364
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    .line 2365
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v2

    if-nez v7, :cond_12

    goto :goto_10

    :cond_12
    if-ne v7, v14, :cond_14

    const-wide/16 v8, 0x8

    const/16 v3, 0xa

    const/16 v7, 0xa

    goto :goto_12

    :cond_13
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 2381
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v7

    .line 2382
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getScale()I

    move-result v3

    .line 2383
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    .line 2384
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v2

    if-nez v7, :cond_14

    :goto_10
    const/16 v3, 0xb

    const/4 v7, 0x4

    const-wide/16 v8, 0xa

    goto :goto_12

    :cond_14
    :goto_11
    move v4, v3

    move v3, v2

    .line 2440
    :goto_12
    iput v7, v0, Lorg/h2/expression/Function;->dataType:I

    .line 2441
    iput-wide v8, v0, Lorg/h2/expression/Function;->precision:J

    .line 2442
    iput v4, v0, Lorg/h2/expression/Function;->scale:I

    .line 2443
    iput v3, v0, Lorg/h2/expression/Function;->displaySize:I

    if-eqz v16, :cond_17

    .line 2445
    invoke-virtual/range {p0 .. p1}, Lorg/h2/expression/Function;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    .line 2446
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v2, :cond_16

    .line 2447
    iget-object v2, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v2, v2, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_15

    iget-object v2, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v2, v2, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_16

    :cond_15
    return-object v0

    .line 2451
    :cond_16
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    return-object v1

    :cond_17
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xdb
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setDataType(Lorg/h2/table/Column;)V
    .locals 2

    .line 2236
    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->dataType:I

    .line 2237
    invoke-virtual {p1}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    .line 2238
    invoke-virtual {p1}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    .line 2239
    invoke-virtual {p1}, Lorg/h2/table/Column;->getScale()I

    move-result p1

    iput p1, p0, Lorg/h2/expression/Function;->scale:I

    return-void
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    .line 2458
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2460
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParameter(ILorg/h2/expression/Expression;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 568
    iget-object p1, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 574
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aput-object p2, v0, p1

    :goto_0
    return-void

    :cond_1
    const/16 p1, 0x1b59

    const/4 p2, 0x2

    .line 571
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v1, v1, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 4

    .line 2605
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2607
    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
