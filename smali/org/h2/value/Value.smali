.class public abstract Lorg/h2/value/Value;
.super Ljava/lang/Object;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/value/Value$ValueBlob;,
        Lorg/h2/value/Value$ValueClob;
    }
.end annotation


# static fields
.field public static final ARRAY:I = 0x11

.field public static final BLOB:I = 0xf

.field public static final BOOLEAN:I = 0x1

.field public static final BYTE:I = 0x2

.field public static final BYTES:I = 0xc

.field public static final CLOB:I = 0x10

.field public static final DATE:I = 0xa

.field public static final DECIMAL:I = 0x6

.field public static final DOUBLE:I = 0x7

.field public static final FLOAT:I = 0x8

.field public static final GEOMETRY:I = 0x16

.field public static final INT:I = 0x4

.field public static final JAVA_OBJECT:I = 0x13

.field public static final LONG:I = 0x5

.field private static final MAX_LONG_DECIMAL:Ljava/math/BigDecimal;

.field private static final MIN_LONG_DECIMAL:Ljava/math/BigDecimal;

.field public static final NULL:I = 0x0

.field public static final RESULT_SET:I = 0x12

.field public static final SHORT:I = 0x3

.field public static final STRING:I = 0xd

.field public static final STRING_FIXED:I = 0x15

.field public static final STRING_IGNORECASE:I = 0xe

.field public static final TIME:I = 0x9

.field public static final TIMESTAMP:I = 0xb

.field public static final TIMESTAMP_TZ:I = 0x18

.field public static final TIMESTAMP_UTC:I = 0x17

.field public static final TYPE_COUNT:I = 0x19

.field public static final UNKNOWN:I = -0x1

.field public static final UUID:I = 0x14

.field private static softCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    const-wide v0, 0x7fffffffffffffffL

    .line 177
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/h2/value/Value;->MAX_LONG_DECIMAL:Ljava/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    .line 179
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/h2/value/Value;->MIN_LONG_DECIMAL:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 5

    .line 371
    sget-boolean v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE:Z

    if-eqz v0, :cond_3

    .line 372
    invoke-virtual {p0}, Lorg/h2/value/Value;->hashCode()I

    move-result v0

    .line 373
    sget-object v1, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    .line 376
    :cond_0
    sget-object v1, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/value/Value;

    if-nez v1, :cond_1

    .line 378
    sget v1, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    new-array v1, v1, [Lorg/h2/value/Value;

    .line 379
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    .line 381
    :cond_1
    sget v2, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 382
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {v2}, Lorg/h2/value/Value;->getType()I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 393
    :cond_2
    aput-object p0, v1, v0

    :cond_3
    return-object p0
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x0

    .line 402
    sput-object v0, Lorg/h2/value/Value;->softCache:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static convertToByte(J)B
    .locals 3

    const-wide/16 v0, 0x7f

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x80

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x55f3

    .line 1091
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToInt(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    const/16 v0, 0x55f3

    .line 1107
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToLong(D)J
    .locals 3

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_0

    .line 1120
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/16 v0, 0x55f3

    .line 1117
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToLong(Ljava/math/BigDecimal;)J
    .locals 2

    .line 1124
    sget-object v0, Lorg/h2/value/Value;->MAX_LONG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/h2/value/Value;->MIN_LONG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1129
    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x55f3

    .line 1126
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToShort(J)S
    .locals 3

    const-wide/16 v0, 0x7fff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x8000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0

    :cond_0
    const/16 v0, 0x55f3

    .line 1099
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getHigherOrder(II)I
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const v0, 0xc354

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    :cond_1
    if-ne p0, p1, :cond_2

    return p0

    .line 357
    :cond_2
    invoke-static {p0}, Lorg/h2/value/Value;->getOrder(I)I

    move-result v0

    .line 358
    invoke-static {p1}, Lorg/h2/value/Value;->getOrder(I)I

    move-result v1

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move p0, p1

    :goto_0
    return p0

    :cond_4
    const-string p0, "?, NULL"

    .line 350
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_5
    const-string p0, "NULL, ?"

    .line 347
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "?, ?"

    .line 344
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method static getOrder(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0x22

    return p0

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x2c

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0x2a

    return p0

    :pswitch_5
    const/16 p0, 0x2b

    return p0

    :pswitch_6
    const/16 p0, 0x33

    return p0

    :pswitch_7
    const/16 p0, 0x32

    return p0

    :pswitch_8
    const/16 p0, 0xb

    return p0

    :pswitch_9
    const/16 p0, 0x29

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x28

    return p0

    :pswitch_d
    const/16 p0, 0x20

    return p0

    :pswitch_e
    const/16 p0, 0x1f

    return p0

    :pswitch_f
    const/16 p0, 0x1e

    return p0

    :pswitch_10
    const/16 p0, 0x1a

    return p0

    :pswitch_11
    const/16 p0, 0x1b

    return p0

    :pswitch_12
    const/16 p0, 0x19

    return p0

    :pswitch_13
    const/16 p0, 0x18

    return p0

    :pswitch_14
    const/16 p0, 0x17

    return p0

    :pswitch_15
    const/16 p0, 0x16

    return p0

    :pswitch_16
    const/16 p0, 0x15

    return p0

    :pswitch_17
    const/16 p0, 0x14

    return p0

    :pswitch_18
    const/4 p0, 0x2

    return p0

    :pswitch_19
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "+"

    .line 472
    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkPrecision(J)Z
    .locals 3

    .line 1170
    invoke-virtual {p0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
.end method

.method public final compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1049
    :cond_0
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v1, :cond_2

    .line 1050
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1051
    :cond_2
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1054
    :cond_3
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1055
    invoke-virtual {p0, p1, p2}, Lorg/h2/value/Value;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1

    .line 1057
    :cond_4
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v0

    .line 1058
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/h2/value/Value;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public final compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1028
    :cond_0
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1030
    :cond_1
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1033
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/h2/value/Value;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public convertTo(I)Lorg/h2/value/Value;
    .locals 15

    move/from16 v0, p1

    .line 537
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0xb

    const-wide/16 v3, 0x1

    const/16 v5, 0xf

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/16 v10, 0x18

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x5602

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 813
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v8

    if-eq v8, v2, :cond_3

    if-eq v8, v10, :cond_2

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_6

    .line 827
    :pswitch_2
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 829
    :pswitch_3
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 825
    :pswitch_4
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 823
    :pswitch_5
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 821
    :pswitch_6
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 819
    :pswitch_7
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 817
    :pswitch_8
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 815
    :pswitch_9
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v6

    :goto_0
    invoke-static {v3, v4}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "unimplemented"

    .line 836
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 831
    :cond_3
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    invoke-static {v1, v2, v0}, Lorg/h2/value/ValueTimestampUtc;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 909
    :pswitch_a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_8

    if-eq v2, v10, :cond_7

    .line 918
    :pswitch_b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_6

    const/16 v3, 0x13

    if-eq v2, v3, :cond_4

    if-eq v2, v10, :cond_5

    goto/16 :goto_6

    .line 922
    :cond_4
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    invoke-static {v0}, Lorg/h2/value/DataType;->isGeometry(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 924
    invoke-static {v0}, Lorg/h2/value/ValueGeometry;->getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    .line 927
    :cond_5
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 920
    :cond_6
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueGeometry;->get([B)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    .line 913
    :cond_7
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 911
    :cond_8
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueUuid;->get([B)Lorg/h2/value/ValueUuid;

    move-result-object v0

    return-object v0

    .line 886
    :pswitch_c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_a

    if-eq v2, v5, :cond_a

    if-eq v2, v10, :cond_9

    goto/16 :goto_6

    .line 892
    :cond_9
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 889
    :cond_a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object v0

    return-object v0

    .line 898
    :pswitch_d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_c

    if-eq v2, v10, :cond_b

    goto/16 :goto_6

    .line 903
    :cond_b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 900
    :cond_c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v5, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    .line 841
    :pswitch_e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v5, :cond_f

    const/16 v3, 0x16

    if-eq v2, v3, :cond_e

    if-eq v2, v10, :cond_d

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v6, 0x2

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_6

    .line 867
    :pswitch_f
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    .line 868
    new-array v0, v8, [B

    const/16 v5, 0x38

    shr-long v8, v1, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v12

    const/16 v5, 0x30

    shr-long v7, v1, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v13

    const/16 v5, 0x28

    shr-long v7, v1, v5

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    const/16 v5, 0x20

    shr-long v5, v1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    shr-long v5, v1, v10

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    const/4 v3, 0x5

    const/16 v4, 0x10

    shr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x8

    shr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 858
    :pswitch_10
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    .line 859
    new-array v1, v4, [B

    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    invoke-static {v1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 851
    :pswitch_11
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    .line 852
    new-array v1, v6, [B

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    int-to-byte v0, v0

    aput-byte v0, v1, v13

    invoke-static {v1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 849
    :pswitch_12
    new-array v0, v13, [B

    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v1

    aput-byte v1, v0, v12

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 880
    :cond_d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 847
    :cond_e
    :pswitch_13
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 844
    :cond_f
    :pswitch_14
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 794
    :pswitch_15
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_6

    .line 806
    :sswitch_0
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v1

    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 802
    :sswitch_1
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampUtc;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeMillis()J

    move-result-wide v1

    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampUtc;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampUtc;->getNanosSinceLastMillis()I

    move-result v0

    invoke-static {v1, v2, v0}, Lorg/h2/value/ValueTimestamp;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 799
    :sswitch_2
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueDate;

    invoke-virtual {v0}, Lorg/h2/value/ValueDate;->getDateValue()J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 796
    :sswitch_3
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTime;

    invoke-virtual {v0}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Lorg/h2/util/DateTimeUtils;->normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 757
    :pswitch_16
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_11

    if-eq v3, v2, :cond_10

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_6

    .line 770
    :pswitch_17
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    .line 767
    :pswitch_18
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampUtc;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    .line 764
    :cond_10
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getDateValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    :cond_11
    const-wide/16 v1, 0x7b2

    .line 761
    invoke-static {v1, v2, v13, v13}, Lorg/h2/util/DateTimeUtils;->dateValue(JII)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    .line 776
    :pswitch_19
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_6

    .line 788
    :sswitch_4
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 785
    :sswitch_5
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestampUtc;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTime;->fromMillis(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 782
    :sswitch_6
    move-object v0, p0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimeNanos()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 780
    :sswitch_7
    invoke-static {v6, v7}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 734
    :pswitch_1a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_6

    .line 751
    :pswitch_1b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 749
    :pswitch_1c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    double-to-float v0, v1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 747
    :pswitch_1d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 745
    :pswitch_1e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    long-to-float v0, v1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 742
    :pswitch_1f
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 740
    :pswitch_20
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 738
    :pswitch_21
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 736
    :pswitch_22
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_12
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 711
    :pswitch_23
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    packed-switch v2, :pswitch_data_7

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_6

    .line 728
    :pswitch_24
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 724
    :pswitch_25
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 722
    :pswitch_26
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 719
    :pswitch_27
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 717
    :pswitch_28
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 715
    :pswitch_29
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 713
    :pswitch_2a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_13
    const-wide/16 v1, 0x0

    :goto_2
    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 726
    :cond_14
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 674
    :pswitch_2b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_9

    packed-switch v2, :pswitch_data_a

    packed-switch v2, :pswitch_data_b

    goto/16 :goto_6

    .line 705
    :pswitch_2c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 696
    :pswitch_2d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    .line 697
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_15

    .line 702
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 698
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 688
    :pswitch_2e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    .line 689
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_16

    .line 693
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 690
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 686
    :pswitch_2f
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 683
    :pswitch_30
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 681
    :pswitch_31
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 679
    :pswitch_32
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 676
    :pswitch_33
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3

    :cond_17
    move-wide v3, v6

    :goto_3
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 642
    :pswitch_34
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_19

    packed-switch v2, :pswitch_data_c

    packed-switch v2, :pswitch_data_d

    packed-switch v2, :pswitch_data_e

    goto/16 :goto_6

    .line 668
    :pswitch_35
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 666
    :pswitch_36
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 656
    :pswitch_37
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 654
    :pswitch_38
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 652
    :pswitch_39
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 650
    :pswitch_3a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 648
    :pswitch_3b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 646
    :pswitch_3c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 644
    :pswitch_3d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_4

    :cond_18
    move-wide v3, v6

    :goto_4
    invoke-static {v3, v4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 659
    :cond_19
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object v0

    .line 660
    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1a

    .line 661
    invoke-static {v0, v12}, Lorg/h2/util/Utils;->readLong([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 663
    :cond_1a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 617
    :pswitch_3e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_1b

    packed-switch v2, :pswitch_data_f

    packed-switch v2, :pswitch_data_10

    packed-switch v2, :pswitch_data_11

    goto/16 :goto_6

    .line 636
    :pswitch_3f
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 632
    :pswitch_40
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 630
    :pswitch_41
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 628
    :pswitch_42
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 626
    :pswitch_43
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 623
    :pswitch_44
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_45
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 619
    :pswitch_46
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 634
    :cond_1b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v0, v1

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 592
    :pswitch_47
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v11, :cond_1c

    packed-switch v2, :pswitch_data_12

    packed-switch v2, :pswitch_data_13

    packed-switch v2, :pswitch_data_14

    goto/16 :goto_6

    .line 611
    :pswitch_48
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 607
    :pswitch_49
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 605
    :pswitch_4a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 603
    :pswitch_4b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 601
    :pswitch_4c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 598
    :pswitch_4d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToShort(J)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 596
    :pswitch_4e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getByte()B

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 594
    :pswitch_4f
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 609
    :cond_1c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 567
    :pswitch_50
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    if-eq v2, v13, :cond_1e

    if-eq v2, v11, :cond_1d

    packed-switch v2, :pswitch_data_15

    packed-switch v2, :pswitch_data_16

    goto/16 :goto_6

    .line 586
    :pswitch_51
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 582
    :pswitch_52
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 580
    :pswitch_53
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 578
    :pswitch_54
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/Value;->convertToLong(Ljava/math/BigDecimal;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 576
    :pswitch_55
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 573
    :pswitch_56
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 571
    :pswitch_57
    invoke-virtual {p0}, Lorg/h2/value/Value;->getShort()S

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/h2/value/Value;->convertToByte(J)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 584
    :cond_1d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 569
    :cond_1e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 544
    :pswitch_58
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_17

    packed-switch v2, :pswitch_data_18

    packed-switch v2, :pswitch_data_19

    goto :goto_6

    .line 561
    :pswitch_59
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 552
    :pswitch_5a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getSignum()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_5

    :cond_1f
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    .line 932
    :goto_6
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1a

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 971
    :pswitch_5b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestampTimeZone;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object v0

    return-object v0

    .line 969
    :pswitch_5c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestampUtc;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 1006
    :pswitch_5d
    invoke-static {v2}, Lorg/h2/value/ValueGeometry;->get(Ljava/lang/String;)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    .line 983
    :pswitch_5e
    invoke-static {v2}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object v0

    return-object v0

    .line 1004
    :pswitch_5f
    invoke-static {v2}, Lorg/h2/value/ValueUuid;->get(Ljava/lang/String;)Lorg/h2/value/ValueUuid;

    move-result-object v0

    return-object v0

    .line 976
    :pswitch_60
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object v0

    return-object v0

    .line 997
    :pswitch_61
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    .line 998
    invoke-virtual {v0, v12}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    const-string v1, "X"

    .line 999
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v11, v3, v12}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 1000
    new-array v1, v13, [Ljava/lang/Object;

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1001
    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v0

    return-object v0

    .line 995
    :pswitch_62
    new-array v0, v13, [Lorg/h2/value/Value;

    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    return-object v0

    .line 989
    :pswitch_63
    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    .line 992
    :pswitch_64
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v5, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    .line 981
    :pswitch_65
    invoke-static {v2}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object v0

    return-object v0

    .line 979
    :pswitch_66
    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    .line 973
    :pswitch_67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 967
    :pswitch_68
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 965
    :pswitch_69
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDate;->parse(Ljava/lang/String;)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    .line 963
    :pswitch_6a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueTime;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 987
    :pswitch_6b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 985
    :pswitch_6c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 961
    :pswitch_6d
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 959
    :pswitch_6e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 957
    :pswitch_6f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 955
    :pswitch_70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 953
    :pswitch_71
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    :pswitch_72
    const-string v0, "true"

    .line 937
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "t"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "y"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_9

    :cond_20
    const-string v0, "false"

    .line 942
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_8

    .line 949
    :cond_21
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_7

    :cond_22
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    .line 946
    :cond_23
    :goto_8
    invoke-static {v12}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    .line 941
    :cond_24
    :goto_9
    invoke-static {v13}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    .line 935
    :pswitch_73
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 1008
    :goto_a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1011
    new-array v1, v13, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v14, v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_58
        :pswitch_50
        :pswitch_47
        :pswitch_3e
        :pswitch_34
        :pswitch_2b
        :pswitch_23
        :pswitch_1a
        :pswitch_19
        :pswitch_16
        :pswitch_15
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x13
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x17
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x17
        :pswitch_1e
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x17
        :pswitch_26
        :pswitch_24
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x7
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x17
        :pswitch_2f
        :pswitch_2c
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x6
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x17
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x5
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x17
        :pswitch_43
        :pswitch_3f
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x4
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x17
        :pswitch_4c
        :pswitch_48
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x3
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x17
        :pswitch_55
        :pswitch_51
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x2
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x13
        :pswitch_59
        :pswitch_59
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0x17
        :pswitch_59
        :pswitch_59
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch
.end method

.method public copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public copyToResult()Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public copyToTemp()Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "/"

    .line 505
    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x6

    .line 438
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueDecimal;

    invoke-virtual {v0}, Lorg/h2/value/ValueDecimal;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueBoolean;

    invoke-virtual {v0}, Lorg/h2/value/ValueBoolean;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getByte()B
    .locals 1

    const/4 v0, 0x2

    .line 430
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueByte;

    invoke-virtual {v0}, Lorg/h2/value/ValueByte;->getByte()B

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    const/16 v0, 0xc

    .line 422
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueBytes;

    invoke-virtual {v0}, Lorg/h2/value/ValueBytes;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesNoCopy()[B
    .locals 1

    const/16 v0, 0xc

    .line 426
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueBytes;

    invoke-virtual {v0}, Lorg/h2/value/ValueBytes;->getBytesNoCopy()[B

    move-result-object v0

    return-object v0
.end method

.method protected getDataHandler()Lorg/h2/store/DataHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()Ljava/sql/Date;
    .locals 1

    const/16 v0, 0xa

    .line 410
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueDate;

    invoke-virtual {v0}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDisplaySize()I
.end method

.method public getDouble()D
    .locals 2

    const/4 v0, 0x7

    .line 442
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueDouble;

    invoke-virtual {v0}, Lorg/h2/value/ValueDouble;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    const/16 v0, 0x8

    .line 446
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueFloat;

    invoke-virtual {v0}, Lorg/h2/value/ValueFloat;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 458
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getInt()I
    .locals 1

    const/4 v0, 0x4

    .line 450
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueInt;

    invoke-virtual {v0}, Lorg/h2/value/ValueInt;->getInt()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    const/4 v0, 0x5

    .line 454
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueLong;

    invoke-virtual {v0}, Lorg/h2/value/ValueLong;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemory()I
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget v0, v0, Lorg/h2/value/DataType;->memory:I

    return v0
.end method

.method public abstract getObject()Ljava/lang/Object;
.end method

.method public abstract getPrecision()J
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2

    .line 462
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 6

    .line 1239
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 v1, 0x0

    .line 1240
    invoke-virtual {v0, v1}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    const-string v2, "X"

    .line 1241
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v4

    invoke-virtual {p0}, Lorg/h2/value/Value;->getScale()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const/4 v2, 0x1

    .line 1243
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract getSQL()Ljava/lang/String;
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShort()S
    .locals 1

    const/4 v0, 0x3

    .line 434
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueShort;

    invoke-virtual {v0}, Lorg/h2/value/ValueShort;->getShort()S

    move-result v0

    return v0
.end method

.method public getSignum()I
    .locals 1

    const-string v0, "SIGNUM"

    .line 476
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getSmall()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public getTableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTime()Ljava/sql/Time;
    .locals 1

    const/16 v0, 0x9

    .line 414
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueTime;

    invoke-virtual {v0}, Lorg/h2/value/ValueTime;->getTime()Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 1

    const/16 v0, 0xb

    .line 418
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTraceSQL()Ljava/lang/String;
    .locals 1

    .line 1180
    invoke-virtual {p0}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public abstract hashCode()I
.end method

.method public isLinkedToTable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "%"

    .line 525
    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "*"

    .line 515
    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    const-string v0, "NEG"

    .line 485
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method

.method public abstract set(Ljava/sql/PreparedStatement;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "-"

    .line 495
    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method protected throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1185
    invoke-virtual {p0}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
