.class public Lorg/h2/mvstore/MVMap$Builder;
.super Ljava/lang/Object;
.source "MVMap.java"

# interfaces
.implements Lorg/h2/mvstore/MVMap$MapBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/MVMap;
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
        "Lorg/h2/mvstore/MVMap<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field protected keyType:Lorg/h2/mvstore/type/DataType;

.field protected valueType:Lorg/h2/mvstore/type/DataType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lorg/h2/mvstore/MVMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v0}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVMap$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    .line 1332
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    if-nez v0, :cond_1

    .line 1333
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v0}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    .line 1335
    :cond_1
    new-instance v0, Lorg/h2/mvstore/MVMap;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-direct {v0, v1, v2}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    return-object v0
.end method

.method public getKeyType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    .line 1309
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    return-object v0
.end method

.method public getValueType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    .line 1313
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    return-object v0
.end method

.method public keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/MVMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1304
    iput-object p1, p0, Lorg/h2/mvstore/MVMap$Builder;->keyType:Lorg/h2/mvstore/type/DataType;

    return-object p0
.end method

.method public valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/MVMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Lorg/h2/mvstore/MVMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    return-object p0
.end method
