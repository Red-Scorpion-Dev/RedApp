.class public Lorg/h2/util/StatementBuilder;
.super Ljava/lang/Object;
.source "StatementBuilder.java"


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    .line 48
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)Lorg/h2/util/StatementBuilder;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(J)Lorg/h2/util/StatementBuilder;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendExceptFirst(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget v0, p0, Lorg/h2/util/StatementBuilder;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/util/StatementBuilder;->index:I

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public appendOnlyFirst(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget v0, p0, Lorg/h2/util/StatementBuilder;->index:I

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public resetCount()Lorg/h2/util/StatementBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lorg/h2/util/StatementBuilder;->index:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/h2/util/StatementBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
