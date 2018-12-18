.class public Lorg/h2/util/SmallMap;
.super Ljava/lang/Object;
.source "SmallMap.java"


# instance fields
.field private cache:Ljava/lang/Object;

.field private cacheId:I

.field private lastId:I

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final maxElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/SmallMap;->map:Ljava/util/HashMap;

    .line 31
    iput p1, p0, Lorg/h2/util/SmallMap;->maxElements:I

    return-void
.end method


# virtual methods
.method public addObject(ILjava/lang/Object;)I
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/h2/util/SmallMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lorg/h2/util/SmallMap;->maxElements:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lorg/h2/util/SmallMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/h2/util/SmallMap;->maxElements:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/h2/util/SmallMap;->lastId:I

    if-ge v1, v2, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 52
    :cond_1
    iget v0, p0, Lorg/h2/util/SmallMap;->lastId:I

    if-le p1, v0, :cond_2

    .line 53
    iput p1, p0, Lorg/h2/util/SmallMap;->lastId:I

    .line 55
    :cond_2
    iget-object v0, p0, Lorg/h2/util/SmallMap;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput p1, p0, Lorg/h2/util/SmallMap;->cacheId:I

    .line 57
    iput-object p2, p0, Lorg/h2/util/SmallMap;->cache:Ljava/lang/Object;

    return p1
.end method

.method public freeObject(I)V
    .locals 1

    .line 67
    iget v0, p0, Lorg/h2/util/SmallMap;->cacheId:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lorg/h2/util/SmallMap;->cacheId:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/h2/util/SmallMap;->cache:Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/h2/util/SmallMap;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getObject(IZ)Ljava/lang/Object;
    .locals 1

    .line 84
    iget v0, p0, Lorg/h2/util/SmallMap;->cacheId:I

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lorg/h2/util/SmallMap;->cache:Ljava/lang/Object;

    return-object p1

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/h2/util/SmallMap;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15f97

    .line 89
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method
