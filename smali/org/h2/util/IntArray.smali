.class public Lorg/h2/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private data:[I

.field private hash:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 23
    invoke-direct {p0, v0}, Lorg/h2/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/util/IntArray;->data:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/h2/util/IntArray;->data:[I

    .line 42
    array-length p1, p1

    iput p1, p0, Lorg/h2/util/IntArray;->size:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 51
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    iget-object v1, p0, Lorg/h2/util/IntArray;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 52
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/h2/util/IntArray;->ensureCapacity(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/util/IntArray;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    const/4 v0, 0x4

    .line 94
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 95
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 96
    new-array p1, p1, [I

    .line 97
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    iget-object v1, p0, Lorg/h2/util/IntArray;->data:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object p1, p0, Lorg/h2/util/IntArray;->data:[I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104
    instance-of v0, p1, Lorg/h2/util/IntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    check-cast p1, Lorg/h2/util/IntArray;

    .line 108
    invoke-virtual {p0}, Lorg/h2/util/IntArray;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/util/IntArray;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    iget v2, p1, Lorg/h2/util/IntArray;->size:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 111
    :goto_0
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    if-ge v0, v2, :cond_3

    .line 112
    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/h2/util/IntArray;->data:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public get(I)I
    .locals 3

    .line 64
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    .line 65
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/util/IntArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 121
    iget v0, p0, Lorg/h2/util/IntArray;->hash:I

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lorg/h2/util/IntArray;->hash:I

    return v0

    .line 124
    :cond_0
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 125
    :goto_0
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iput v0, p0, Lorg/h2/util/IntArray;->hash:I

    return v0
.end method

.method public remove(I)V
    .locals 4

    .line 78
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/util/IntArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    iget v3, p0, Lorg/h2/util/IntArray;->size:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget p1, p0, Lorg/h2/util/IntArray;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/util/IntArray;->size:I

    return-void
.end method

.method public removeRange(II)V
    .locals 3

    .line 167
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 168
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/util/IntArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    iget-object v1, p0, Lorg/h2/util/IntArray;->data:[I

    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/h2/util/IntArray;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/h2/util/IntArray;->size:I

    return v0
.end method

.method public toArray([I)V
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/h2/util/IntArray;->data:[I

    iget v1, p0, Lorg/h2/util/IntArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 153
    :goto_0
    iget v2, p0, Lorg/h2/util/IntArray;->size:I

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 154
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lorg/h2/util/IntArray;->data:[I

    aget v2, v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    .line 157
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
