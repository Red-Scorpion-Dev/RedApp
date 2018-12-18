.class public Lorg/h2/index/IndexType;
.super Ljava/lang/Object;
.source "IndexType.java"


# instance fields
.field private belongsToConstraint:Z

.field private hash:Z

.field private persistent:Z

.field private primaryKey:Z

.field private scan:Z

.field private spatial:Z

.field private unique:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNonUnique(Z)Lorg/h2/index/IndexType;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, v0, v0}, Lorg/h2/index/IndexType;->createNonUnique(ZZZ)Lorg/h2/index/IndexType;

    move-result-object p0

    return-object p0
.end method

.method public static createNonUnique(ZZZ)Lorg/h2/index/IndexType;
    .locals 1

    .line 67
    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    .line 68
    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    .line 69
    iput-boolean p1, v0, Lorg/h2/index/IndexType;->hash:Z

    .line 70
    iput-boolean p2, v0, Lorg/h2/index/IndexType;->spatial:Z

    return-object v0
.end method

.method public static createPrimaryKey(ZZ)Lorg/h2/index/IndexType;
    .locals 2

    .line 24
    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lorg/h2/index/IndexType;->primaryKey:Z

    .line 26
    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    .line 27
    iput-boolean p1, v0, Lorg/h2/index/IndexType;->hash:Z

    .line 28
    iput-boolean v1, v0, Lorg/h2/index/IndexType;->unique:Z

    return-object v0
.end method

.method public static createScan(Z)Lorg/h2/index/IndexType;
    .locals 1

    .line 81
    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    .line 82
    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    const/4 p0, 0x1

    .line 83
    iput-boolean p0, v0, Lorg/h2/index/IndexType;->scan:Z

    return-object v0
.end method

.method public static createUnique(ZZ)Lorg/h2/index/IndexType;
    .locals 2

    .line 40
    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, v0, Lorg/h2/index/IndexType;->unique:Z

    .line 42
    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    .line 43
    iput-boolean p1, v0, Lorg/h2/index/IndexType;->hash:Z

    return-object v0
.end method


# virtual methods
.method public getBelongsToConstraint()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->belongsToConstraint:Z

    return v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->primaryKey:Z

    if-eqz v1, :cond_0

    const-string v1, "PRIMARY KEY"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->hash:Z

    if-eqz v1, :cond_4

    const-string v1, " HASH"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_0
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->unique:Z

    if-eqz v1, :cond_1

    const-string v1, "UNIQUE "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->hash:Z

    if-eqz v1, :cond_2

    const-string v1, "HASH "

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->spatial:Z

    if-eqz v1, :cond_3

    const-string v1, "SPATIAL "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "INDEX"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHash()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->hash:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->persistent:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->primaryKey:Z

    return v0
.end method

.method public isScan()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->scan:Z

    return v0
.end method

.method public isSpatial()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->spatial:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/h2/index/IndexType;->unique:Z

    return v0
.end method

.method public setBelongsToConstraint(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/h2/index/IndexType;->belongsToConstraint:Z

    return-void
.end method
