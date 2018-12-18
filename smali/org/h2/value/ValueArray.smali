.class public Lorg/h2/value/ValueArray;
.super Lorg/h2/value/Value;
.source "ValueArray.java"


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private hash:I

.field private final values:[Lorg/h2/value/Value;


# direct methods
.method private constructor <init>(Ljava/lang/Class;[Lorg/h2/value/Value;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/h2/value/Value;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/h2/value/ValueArray;->componentType:Ljava/lang/Class;

    .line 27
    iput-object p2, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    return-void
.end method

.method private constructor <init>([Lorg/h2/value/Value;)V
    .locals 1

    .line 31
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lorg/h2/value/ValueArray;-><init>(Ljava/lang/Class;[Lorg/h2/value/Value;)V

    return-void
.end method

.method public static get(Ljava/lang/Class;[Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/h2/value/Value;",
            ")",
            "Lorg/h2/value/ValueArray;"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/h2/value/ValueArray;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueArray;-><init>(Ljava/lang/Class;[Lorg/h2/value/Value;)V

    return-object v0
.end method

.method public static get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;
    .locals 1

    .line 42
    new-instance v0, Lorg/h2/value/ValueArray;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueArray;-><init>([Lorg/h2/value/Value;)V

    return-object v0
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 7

    .line 104
    check-cast p1, Lorg/h2/value/ValueArray;

    .line 105
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    iget-object v1, p1, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v0, v0

    .line 109
    iget-object v1, p1, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v1

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 112
    iget-object v5, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    aget-object v5, v5, v4

    .line 113
    iget-object v6, p1, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    aget-object v6, v6, v4

    .line 114
    invoke-virtual {v5, v6, p2}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 8

    if-nez p3, :cond_0

    return-object p0

    .line 204
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 205
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 206
    invoke-virtual {v3, p1, p2, v4}, Lorg/h2/value/Value;->convertPrecision(JZ)Lorg/h2/value/Value;

    move-result-object v3

    const-wide/16 v4, 0x1

    .line 209
    invoke-virtual {v3}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_2
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/value/Value;

    .line 216
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 171
    instance-of v0, p1, Lorg/h2/value/ValueArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    check-cast p1, Lorg/h2/value/ValueArray;

    .line 175
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    iget-object v2, p1, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v0, v0

    .line 179
    iget-object v2, p1, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 183
    iget-object v4, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    aget-object v4, v4, v2

    iget-object v5, p1, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/h2/value/ValueArray;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 7

    .line 163
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 164
    invoke-virtual {v5}, Lorg/h2/value/Value;->getDisplaySize()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {v2, v3}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getList()[Lorg/h2/value/Value;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public getMemory()I
    .locals 5

    .line 193
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v0

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 194
    invoke-virtual {v4}, Lorg/h2/value/Value;->getMemory()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getObject()Ljava/lang/Object;
    .locals 4

    .line 124
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v0, v0

    .line 125
    iget-object v1, p0, Lorg/h2/value/ValueArray;->componentType:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 127
    iget-object v3, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPrecision()J
    .locals 7

    .line 86
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 87
    invoke-virtual {v5}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getSQL()Ljava/lang/String;
    .locals 6

    .line 139
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 141
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2c

    .line 145
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_1
    const/16 v1, 0x29

    .line 147
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .line 94
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 96
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 99
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceSQL()Ljava/lang/String;
    .locals 6

    .line 152
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 154
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    .line 157
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 59
    iget v0, p0, Lorg/h2/value/ValueArray;->hash:I

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lorg/h2/value/ValueArray;->hash:I

    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueArray;->values:[Lorg/h2/value/Value;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    mul-int/lit8 v3, v3, 0x1f

    .line 64
    invoke-virtual {v4}, Lorg/h2/value/Value;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iput v3, p0, Lorg/h2/value/ValueArray;->hash:I

    return v3
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 0

    const-string p1, "PreparedStatement.set"

    .line 134
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueArray;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
