.class public Lorg/h2/mvstore/MVMapConcurrent$Builder;
.super Ljava/lang/Object;
.source "MVMapConcurrent.java"

# interfaces
.implements Lorg/h2/mvstore/MVMap$MapBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/MVMapConcurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/h2/mvstore/MVMap$MapBuilder<",
        "Lorg/h2/mvstore/MVMapConcurrent<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field protected keyType:Lorg/h2/mvstore/type/DataType;

.field protected valueType:Lorg/h2/mvstore/type/DataType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lorg/h2/mvstore/MVMap;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMapConcurrent$Builder;->create()Lorg/h2/mvstore/MVMapConcurrent;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/h2/mvstore/MVMapConcurrent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMapConcurrent<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v0}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v0}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    .line 72
    :cond_1
    new-instance v0, Lorg/h2/mvstore/MVMapConcurrent;

    iget-object v1, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    iget-object v2, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-direct {v0, v1, v2}, Lorg/h2/mvstore/MVMapConcurrent;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    return-object v0
.end method

.method public keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMapConcurrent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/MVMapConcurrent$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    return-object p0
.end method

.method public valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMapConcurrent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/MVMapConcurrent$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lorg/h2/mvstore/MVMapConcurrent$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    return-object p0
.end method
