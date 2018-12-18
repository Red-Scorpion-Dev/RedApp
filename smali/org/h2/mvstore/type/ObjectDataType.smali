.class public Lorg/h2/mvstore/type/ObjectDataType;
.super Ljava/lang/Object;
.source "ObjectDataType.java"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;,
        Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;,
        Lorg/h2/mvstore/type/ObjectDataType$DateType;,
        Lorg/h2/mvstore/type/ObjectDataType$UUIDType;,
        Lorg/h2/mvstore/type/ObjectDataType$StringType;,
        Lorg/h2/mvstore/type/ObjectDataType$BigDecimalType;,
        Lorg/h2/mvstore/type/ObjectDataType$BigIntegerType;,
        Lorg/h2/mvstore/type/ObjectDataType$DoubleType;,
        Lorg/h2/mvstore/type/ObjectDataType$FloatType;,
        Lorg/h2/mvstore/type/ObjectDataType$LongType;,
        Lorg/h2/mvstore/type/ObjectDataType$IntegerType;,
        Lorg/h2/mvstore/type/ObjectDataType$ShortType;,
        Lorg/h2/mvstore/type/ObjectDataType$CharacterType;,
        Lorg/h2/mvstore/type/ObjectDataType$ByteType;,
        Lorg/h2/mvstore/type/ObjectDataType$BooleanType;,
        Lorg/h2/mvstore/type/ObjectDataType$NullType;,
        Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
    }
.end annotation


# static fields
.field static final COMMON_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final COMMON_CLASSES_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DOUBLE_ONE_BITS:J

.field static final DOUBLE_ZERO_BITS:J

.field static final FLOAT_ONE_BITS:I

.field static final FLOAT_ZERO_BITS:I

.field static final TAG_BIG_DECIMAL_0:I = 0x2e

.field static final TAG_BIG_DECIMAL_1:I = 0x2f

.field static final TAG_BIG_DECIMAL_SMALL:I = 0x30

.field static final TAG_BIG_DECIMAL_SMALL_SCALED:I = 0x31

.field static final TAG_BIG_INTEGER_0:I = 0x25

.field static final TAG_BIG_INTEGER_1:I = 0x26

.field static final TAG_BIG_INTEGER_SMALL:I = 0x27

.field static final TAG_BOOLEAN_TRUE:I = 0x20

.field static final TAG_BYTE_ARRAY_0_15:I = 0x68

.field static final TAG_DOUBLE_0:I = 0x2b

.field static final TAG_DOUBLE_1:I = 0x2c

.field static final TAG_DOUBLE_FIXED:I = 0x2d

.field static final TAG_FLOAT_0:I = 0x28

.field static final TAG_FLOAT_1:I = 0x29

.field static final TAG_FLOAT_FIXED:I = 0x2a

.field static final TAG_INTEGER_0_15:I = 0x40

.field static final TAG_INTEGER_FIXED:I = 0x22

.field static final TAG_INTEGER_NEGATIVE:I = 0x21

.field static final TAG_LONG_0_7:I = 0x50

.field static final TAG_LONG_FIXED:I = 0x24

.field static final TAG_LONG_NEGATIVE:I = 0x23

.field static final TAG_STRING_0_15:I = 0x58

.field static final TYPE_ARRAY:I = 0xe

.field static final TYPE_BIG_DECIMAL:I = 0x9

.field static final TYPE_BIG_INTEGER:I = 0x6

.field static final TYPE_BOOLEAN:I = 0x1

.field static final TYPE_BYTE:I = 0x2

.field static final TYPE_CHAR:I = 0xa

.field static final TYPE_DATE:I = 0xd

.field static final TYPE_DOUBLE:I = 0x8

.field static final TYPE_FLOAT:I = 0x7

.field static final TYPE_INT:I = 0x4

.field static final TYPE_LONG:I = 0x5

.field static final TYPE_NULL:I = 0x0

.field static final TYPE_SERIALIZED_OBJECT:I = 0x13

.field static final TYPE_SHORT:I = 0x3

.field static final TYPE_STRING:I = 0xb

.field static final TYPE_UUID:I = 0xc


# instance fields
.field private last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lorg/h2/mvstore/type/ObjectDataType;->FLOAT_ZERO_BITS:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lorg/h2/mvstore/type/ObjectDataType;->FLOAT_ONE_BITS:I

    const-wide/16 v0, 0x0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/h2/mvstore/type/ObjectDataType;->DOUBLE_ZERO_BITS:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/h2/mvstore/type/ObjectDataType;->DOUBLE_ONE_BITS:J

    const/16 v0, 0x16

    .line 90
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Boolean;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Byte;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Short;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Character;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Long;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Ljava/math/BigInteger;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Float;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Double;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Ljava/math/BigDecimal;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Ljava/util/UUID;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Ljava/util/Date;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES:[Ljava/lang/Class;

    .line 97
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType$StringType;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/type/ObjectDataType$StringType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    iput-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    return-void
.end method

.method public static compareNotNull([B[B)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 398
    :cond_0
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 400
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 401
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_2

    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_3
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 3

    .line 373
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 374
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 375
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 377
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const-string p0, "Could not deserialize {0}"

    invoke-static {p0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method static getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 332
    sget-object v0, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES_MAP:Ljava/util/HashMap;

    .line 333
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 336
    monitor-enter v0

    .line 337
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 338
    sget-object v2, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES:[Ljava/lang/Class;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 339
    sget-object v3, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 344
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static getTypeId(Ljava/lang/Object;)I
    .locals 1

    .line 236
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 238
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 p0, 0xb

    return p0

    .line 240
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 p0, 0x5

    return p0

    .line 242
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    .line 244
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 p0, 0x7

    return p0

    .line 246
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 248
    :cond_5
    instance-of v0, p0, Ljava/util/UUID;

    if-eqz v0, :cond_6

    const/16 p0, 0xc

    return p0

    .line 250
    :cond_6
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    const/4 p0, 0x2

    return p0

    .line 252
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 254
    :cond_8
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_9

    const/16 p0, 0xa

    return p0

    :cond_9
    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_a
    invoke-static {p0}, Lorg/h2/mvstore/type/ObjectDataType;->isDate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0xd

    return p0

    .line 260
    :cond_b
    invoke-static {p0}, Lorg/h2/mvstore/type/ObjectDataType;->isBigInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x6

    return p0

    .line 262
    :cond_c
    invoke-static {p0}, Lorg/h2/mvstore/type/ObjectDataType;->isBigDecimal(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x9

    return p0

    .line 264
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0xe

    return p0

    :cond_e
    const/16 p0, 0x13

    return p0
.end method

.method static isArray(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isBigDecimal(Ljava/lang/Object;)Z
    .locals 1

    .line 302
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/math/BigDecimal;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isBigInteger(Ljava/lang/Object;)Z
    .locals 1

    .line 292
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/math/BigInteger;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isDate(Ljava/lang/Object;)Z
    .locals 1

    .line 312
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private newType(I)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
    .locals 3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unsupported type {0}"

    invoke-static {v0, p1, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 162
    :pswitch_0
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 160
    :pswitch_1
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$DateType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$DateType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 158
    :pswitch_2
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$UUIDType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$UUIDType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 156
    :pswitch_3
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$StringType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$StringType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 142
    :pswitch_4
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$CharacterType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$CharacterType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 154
    :pswitch_5
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$BigDecimalType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$BigDecimalType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 150
    :pswitch_6
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$DoubleType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$DoubleType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 148
    :pswitch_7
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$FloatType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$FloatType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 152
    :pswitch_8
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$BigIntegerType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$BigIntegerType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 146
    :pswitch_9
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$LongType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$LongType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 144
    :pswitch_a
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$IntegerType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$IntegerType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 140
    :pswitch_b
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$ShortType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$ShortType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 138
    :pswitch_c
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$ByteType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$ByteType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 136
    :pswitch_d
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$BooleanType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$BooleanType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 134
    :pswitch_e
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$NullType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$NullType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    .line 164
    :cond_0
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 3

    .line 355
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 356
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 357
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 360
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const-string p0, "Could not serialize {0}"

    invoke-static {p0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 6

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x13

    if-gt v0, v5, :cond_0

    move v1, v0

    goto :goto_2

    :cond_0
    packed-switch v0, :pswitch_data_0

    const/16 v5, 0x40

    if-lt v0, v5, :cond_1

    const/16 v5, 0x4f

    if-gt v0, v5, :cond_1

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x9

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_2

    :goto_0
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_2

    :goto_1
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/16 v3, 0x58

    if-lt v0, v3, :cond_2

    const/16 v3, 0x67

    if-gt v0, v3, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v3, 0x50

    if-lt v0, v3, :cond_3

    const/16 v3, 0x57

    if-gt v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x68

    if-lt v0, v2, :cond_5

    const/16 v2, 0x77

    if-gt v0, v2, :cond_5

    const/16 v1, 0xe

    .line 228
    :goto_2
    :pswitch_6
    iget-object v2, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    .line 229
    iget v3, v2, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->typeId:I

    if-eq v1, v3, :cond_4

    .line 230
    invoke-direct {p0, v1}, Lorg/h2/mvstore/type/ObjectDataType;->newType(I)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    .line 232
    :cond_4
    invoke-virtual {v2, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 222
    :cond_5
    new-array p1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Unknown tag {0}"

    invoke-static {v1, v0, p1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method switchType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
    .locals 2

    .line 277
    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->getTypeId(Ljava/lang/Object;)I

    move-result p1

    .line 278
    iget-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    .line 279
    iget v1, v0, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->typeId:I

    if-eq p1, v1, :cond_0

    .line 280
    invoke-direct {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType;->newType(I)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    :cond_0
    return-object v0
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType;->last:Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 122
    aget-object v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
