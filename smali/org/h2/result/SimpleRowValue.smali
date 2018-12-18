.class public Lorg/h2/result/SimpleRowValue;
.super Ljava/lang/Object;
.source "SimpleRowValue.java"

# interfaces
.implements Lorg/h2/result/SearchRow;


# instance fields
.field private data:Lorg/h2/value/Value;

.field private index:I

.field private key:J

.field private version:I

.field private final virtualColumnCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/h2/result/SimpleRowValue;->virtualColumnCount:I

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/h2/result/SimpleRowValue;->virtualColumnCount:I

    return v0
.end method

.method public getKey()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/h2/result/SimpleRowValue;->key:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getMemory()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getValue(I)Lorg/h2/value/Value;
    .locals 1

    .line 54
    iget v0, p0, Lorg/h2/result/SimpleRowValue;->index:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/h2/result/SimpleRowValue;->version:I

    return v0
.end method

.method public setKey(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lorg/h2/result/SimpleRowValue;->key:J

    return-void
.end method

.method public setKeyAndVersion(Lorg/h2/result/SearchRow;)V
    .locals 2

    .line 28
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/result/SimpleRowValue;->key:J

    .line 29
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    iput p1, p0, Lorg/h2/result/SimpleRowValue;->version:I

    return-void
.end method

.method public setValue(ILorg/h2/value/Value;)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/h2/result/SimpleRowValue;->index:I

    .line 60
    iput-object p2, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( /* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/result/SimpleRowValue;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " */ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
