.class public Lorg/h2/result/SimpleRow;
.super Ljava/lang/Object;
.source "SimpleRow.java"

# interfaces
.implements Lorg/h2/result/SearchRow;


# instance fields
.field private final data:[Lorg/h2/value/Value;

.field private key:J

.field private memory:I

.field private version:I


# direct methods
.method public constructor <init>([Lorg/h2/value/Value;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    return v0
.end method

.method public getKey()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lorg/h2/result/SimpleRow;->key:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 4

    .line 79
    iget v0, p0, Lorg/h2/result/SimpleRow;->memory:I

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x18

    .line 81
    iput v1, p0, Lorg/h2/result/SimpleRow;->memory:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 83
    iget-object v2, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 85
    iget v3, p0, Lorg/h2/result/SimpleRow;->memory:I

    invoke-virtual {v2}, Lorg/h2/value/Value;->getMemory()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/h2/result/SimpleRow;->memory:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget v0, p0, Lorg/h2/result/SimpleRow;->memory:I

    return v0
.end method

.method public getValue(I)Lorg/h2/value/Value;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/h2/result/SimpleRow;->version:I

    return v0
.end method

.method public setKey(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lorg/h2/result/SimpleRow;->key:J

    return-void
.end method

.method public setKeyAndVersion(Lorg/h2/result/SearchRow;)V
    .locals 2

    .line 43
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/result/SimpleRow;->key:J

    .line 44
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    iput p1, p0, Lorg/h2/result/SimpleRow;->version:I

    return-void
.end method

.method public setValue(ILorg/h2/value/Value;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 64
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "( /* key:"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/h2/result/SimpleRow;->getKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    .line 66
    iget v1, p0, Lorg/h2/result/SimpleRow;->version:I

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/result/SimpleRow;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    const-string v1, " */ "

    .line 69
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 70
    iget-object v1, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 71
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_1

    const-string v4, "null"

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 74
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
