.class public Lorg/h2/result/RowImpl;
.super Lorg/h2/result/Row;
.source "RowImpl.java"


# instance fields
.field private final data:[Lorg/h2/value/Value;

.field private deleted:Z

.field private key:J

.field private memory:I

.field private sessionId:I

.field private version:I


# direct methods
.method public constructor <init>([Lorg/h2/value/Value;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/h2/result/Row;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    .line 27
    iput p2, p0, Lorg/h2/result/RowImpl;->memory:I

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lorg/h2/result/RowImpl;->sessionId:I

    return-void
.end method

.method public getByteCount(Lorg/h2/store/Data;)I
    .locals 5

    .line 87
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 88
    invoke-virtual {p1, v4}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getColumnCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    return v0
.end method

.method public getCopy()Lorg/h2/result/Row;
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    .line 39
    iget-object v1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    iget-object v2, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-instance v1, Lorg/h2/result/RowImpl;

    iget v2, p0, Lorg/h2/result/RowImpl;->memory:I

    invoke-direct {v1, v0, v2}, Lorg/h2/result/RowImpl;-><init>([Lorg/h2/value/Value;I)V

    .line 41
    iget-wide v2, p0, Lorg/h2/result/RowImpl;->key:J

    iput-wide v2, v1, Lorg/h2/result/RowImpl;->key:J

    .line 42
    iget v0, p0, Lorg/h2/result/RowImpl;->version:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/h2/result/RowImpl;->version:I

    .line 43
    iget v0, p0, Lorg/h2/result/RowImpl;->sessionId:I

    iput v0, v1, Lorg/h2/result/RowImpl;->sessionId:I

    return-object v1
.end method

.method public getKey()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/h2/result/RowImpl;->key:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 4

    .line 114
    iget v0, p0, Lorg/h2/result/RowImpl;->memory:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 115
    iget v0, p0, Lorg/h2/result/RowImpl;->memory:I

    return v0

    :cond_0
    const/16 v0, 0x28

    .line 118
    iget-object v1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v1, v1

    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x18

    add-int/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 122
    iget-object v3, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v3}, Lorg/h2/value/Value;->getMemory()I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 128
    :cond_3
    iput v0, p0, Lorg/h2/result/RowImpl;->memory:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/h2/result/RowImpl;->sessionId:I

    return v0
.end method

.method public getValue(I)Lorg/h2/value/Value;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 75
    iget-wide v0, p0, Lorg/h2/result/RowImpl;->key:J

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getValueList()[Lorg/h2/value/Value;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/h2/result/RowImpl;->version:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/h2/result/RowImpl;->deleted:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeleted(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lorg/h2/result/RowImpl;->deleted:Z

    return-void
.end method

.method public setKey(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lorg/h2/result/RowImpl;->key:J

    return-void
.end method

.method public setKeyAndVersion(Lorg/h2/result/SearchRow;)V
    .locals 2

    .line 49
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/result/RowImpl;->setKey(J)V

    .line 50
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/result/RowImpl;->setVersion(I)V

    return-void
.end method

.method public setSessionId(I)V
    .locals 0

    .line 159
    iput p1, p0, Lorg/h2/result/RowImpl;->sessionId:I

    return-void
.end method

.method public setValue(ILorg/h2/value/Value;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 96
    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/result/RowImpl;->key:J

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 60
    iput p1, p0, Lorg/h2/result/RowImpl;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 134
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "( /* key:"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/h2/result/RowImpl;->getKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    .line 136
    iget v1, p0, Lorg/h2/result/RowImpl;->version:I

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/result/RowImpl;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/h2/result/RowImpl;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " deleted"

    .line 140
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    const-string v1, " */ "

    .line 142
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 143
    iget-object v1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lorg/h2/result/RowImpl;->data:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 145
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_2

    const-string v4, "null"

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x29

    .line 149
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
