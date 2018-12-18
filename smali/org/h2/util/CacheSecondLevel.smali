.class Lorg/h2/util/CacheSecondLevel;
.super Ljava/lang/Object;
.source "CacheSecondLevel.java"

# interfaces
.implements Lorg/h2/util/Cache;


# instance fields
.field private final baseCache:Lorg/h2/util/Cache;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/h2/util/CacheObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/h2/util/Cache;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/util/Cache;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/h2/util/CacheObject;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    .line 22
    iput-object p2, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->clear()V

    return-void
.end method

.method public find(I)Lorg/h2/util/CacheObject;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/h2/util/CacheObject;

    :cond_0
    return-object v0
.end method

.method public get(I)Lorg/h2/util/CacheObject;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/h2/util/CacheObject;

    :cond_0
    return-object v0
.end method

.method public getAllChanged()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/CacheObject;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->getAllChanged()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxMemory()I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMaxMemory()I

    move-result v0

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMemory()I

    move-result v0

    return v0
.end method

.method public put(Lorg/h2/util/CacheObject;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    .line 67
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(I)Z
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    move-result v0

    .line 73
    iget-object v1, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    return p1
.end method

.method public setMaxMemory(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->setMaxMemory(I)V

    return-void
.end method

.method public update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/h2/util/CacheSecondLevel;->baseCache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/h2/util/Cache;->update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lorg/h2/util/CacheSecondLevel;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
