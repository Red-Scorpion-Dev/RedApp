.class Lorg/h2/mvstore/rtree/MVRTreeMap$1;
.super Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;
.source "MVRTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/rtree/MVRTreeMap;->findIntersectingKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/mvstore/rtree/MVRTreeMap;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/rtree/MVRTreeMap;Lorg/h2/mvstore/Page;Lorg/h2/mvstore/rtree/SpatialKey;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$1;->this$0:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;-><init>(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/rtree/SpatialKey;)V

    return-void
.end method


# virtual methods
.method protected check(ZLorg/h2/mvstore/rtree/SpatialKey;Lorg/h2/mvstore/rtree/SpatialKey;)Z
    .locals 0

    .line 67
    iget-object p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap$1;->this$0:Lorg/h2/mvstore/rtree/MVRTreeMap;

    iget-object p1, p1, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, p2, p3}, Lorg/h2/mvstore/rtree/SpatialDataType;->isOverlap(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
