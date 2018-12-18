.class public Lorg/h2/value/ValueNull;
.super Lorg/h2/value/Value;
.source "ValueNull.java"


# static fields
.field public static final DELETED:Lorg/h2/value/ValueNull;

.field private static final DISPLAY_SIZE:I = 0x4

.field public static final INSTANCE:Lorg/h2/value/ValueNull;

.field private static final PRECISION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/h2/value/ValueNull;

    invoke-direct {v0}, Lorg/h2/value/ValueNull;-><init>()V

    sput-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 33
    new-instance v0, Lorg/h2/value/ValueNull;

    invoke-direct {v0}, Lorg/h2/value/ValueNull;-><init>()V

    sput-object v0, Lorg/h2/value/ValueNull;->DELETED:Lorg/h2/value/ValueNull;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    return-void
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    const-string p1, "compare null"

    .line 141
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public convertTo(I)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByte()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()Ljava/sql/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getDouble()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLong()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public getShort()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()Ljava/sql/Time;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    invoke-static {v0}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setNull(II)V

    return-void
.end method
