.class public Lorg/h2/util/CacheTQ;
.super Ljava/lang/Object;
.source "CacheTQ.java"

# interfaces
.implements Lorg/h2/util/Cache;


# static fields
.field static final TYPE_NAME:Ljava/lang/String; = "TQ"


# instance fields
.field private final fifo:Lorg/h2/util/Cache;

.field private lastUsed:I

.field private final lru:Lorg/h2/util/Cache;

.field private maxMemory:I

.field private final recentlyUsed:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/h2/util/CacheWriter;I)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 24
    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/h2/util/CacheTQ;->lastUsed:I

    .line 31
    iput p2, p0, Lorg/h2/util/CacheTQ;->maxMemory:I

    .line 32
    new-instance v0, Lorg/h2/util/CacheLRU;

    int-to-double v1, p2

    const-wide v3, 0x3fe999999999999aL    # 0.8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, p1, v3, v4}, Lorg/h2/util/CacheLRU;-><init>(Lorg/h2/util/CacheWriter;IZ)V

    iput-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    .line 33
    new-instance v0, Lorg/h2/util/CacheLRU;

    const-wide v3, 0x3fc999999999999aL    # 0.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/util/CacheLRU;-><init>(Lorg/h2/util/CacheWriter;IZ)V

    iput-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    mul-int/lit8 p2, p2, 0x4

    .line 34
    invoke-virtual {p0, p2}, Lorg/h2/util/CacheTQ;->setMaxMemory(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->clear()V

    .line 40
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->clear()V

    .line 41
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v0}, Lorg/h2/util/SmallLRUCache;->clear()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/h2/util/CacheTQ;->lastUsed:I

    return-void
.end method

.method public find(I)Lorg/h2/util/CacheObject;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public get(I)Lorg/h2/util/CacheObject;
    .locals 3

    .line 56
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->isStream()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/SmallLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget v1, p0, Lorg/h2/util/CacheTQ;->lastUsed:I

    if-eq v1, p1, :cond_2

    .line 64
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v1, p1}, Lorg/h2/util/Cache;->remove(I)Z

    .line 65
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v1, v0}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lorg/h2/util/SmallLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    :goto_0
    iput p1, p0, Lorg/h2/util/CacheTQ;->lastUsed:I

    :cond_3
    return-object v0
.end method

.method public getAllChanged()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/CacheObject;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v1}, Lorg/h2/util/Cache;->getAllChanged()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v1}, Lorg/h2/util/Cache;->getAllChanged()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getMaxMemory()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/h2/util/CacheTQ;->maxMemory:I

    return v0
.end method

.method public getMemory()I
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMemory()I

    move-result v0

    iget-object v1, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v1}, Lorg/h2/util/Cache;->getMemory()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public put(Lorg/h2/util/CacheObject;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/SmallLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    .line 101
    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    iput p1, p0, Lorg/h2/util/CacheTQ;->lastUsed:I

    :goto_0
    return-void
.end method

.method public remove(I)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    move-result v0

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/util/SmallLRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public setMaxMemory(I)V
    .locals 5

    .line 117
    iput p1, p0, Lorg/h2/util/CacheTQ;->maxMemory:I

    .line 118
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    int-to-double v1, p1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v3, v3

    invoke-interface {v0, v3}, Lorg/h2/util/Cache;->setMaxMemory(I)V

    .line 119
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    const-wide v3, 0x3fc999999999999aL    # 0.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/h2/util/Cache;->setMaxMemory(I)V

    .line 120
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->recentlyUsed:Lorg/h2/util/SmallLRUCache;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lorg/h2/util/SmallLRUCache;->setMaxSize(I)V

    return-void
.end method

.method public update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->lru:Lorg/h2/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/h2/util/Cache;->update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/h2/util/CacheTQ;->fifo:Lorg/h2/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/h2/util/Cache;->update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;

    move-result-object p1

    return-object p1
.end method
