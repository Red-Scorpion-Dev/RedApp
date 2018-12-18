.class public Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;
.super Ljava/lang/Object;
.source "MVRTreeMap.java"

# interfaces
.implements Lorg/h2/mvstore/MVMap$MapBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/rtree/MVRTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/h2/mvstore/MVMap$MapBuilder<",
        "Lorg/h2/mvstore/rtree/MVRTreeMap<",
        "TV;>;",
        "Lorg/h2/mvstore/rtree/SpatialKey;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private dimensions:I

.field private valueType:Lorg/h2/mvstore/type/DataType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 576
    iput v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->dimensions:I

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lorg/h2/mvstore/MVMap;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->create()Lorg/h2/mvstore/rtree/MVRTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/h2/mvstore/rtree/MVRTreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/rtree/MVRTreeMap<",
            "TV;>;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v0}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    .line 613
    :cond_0
    new-instance v0, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iget v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->dimensions:I

    iget-object v2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-direct {v0, v1, v2}, Lorg/h2/mvstore/rtree/MVRTreeMap;-><init>(ILorg/h2/mvstore/type/DataType;)V

    return-object v0
.end method

.method public dimensions(I)Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/h2/mvstore/rtree/MVRTreeMap$Builder<",
            "TV;>;"
        }
    .end annotation

    .line 593
    iput p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->dimensions:I

    return-object p0
.end method

.method public valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/rtree/MVRTreeMap$Builder<",
            "TV;>;"
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->valueType:Lorg/h2/mvstore/type/DataType;

    return-object p0
.end method
