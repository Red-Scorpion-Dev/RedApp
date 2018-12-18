.class public Lorg/h2/util/SoftHashMap;
.super Ljava/util/AbstractMap;
.source "SoftHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/SoftHashMap$SoftValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lorg/h2/util/SoftHashMap$SoftValue<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/h2/util/SoftHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 29
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/SoftHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method private processQueue()V
    .locals 2

    .line 35
    :goto_0
    iget-object v0, p0, Lorg/h2/util/SoftHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    check-cast v0, Lorg/h2/util/SoftHashMap$SoftValue;

    .line 40
    iget-object v0, v0, Lorg/h2/util/SoftHashMap$SoftValue;->key:Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lorg/h2/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lorg/h2/util/SoftHashMap;->processQueue()V

    .line 86
    iget-object v0, p0, Lorg/h2/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/h2/util/SoftHashMap;->processQueue()V

    .line 48
    iget-object v0, p0, Lorg/h2/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/h2/util/SoftHashMap;->processQueue()V

    .line 66
    iget-object v0, p0, Lorg/h2/util/SoftHashMap;->map:Ljava/util/Map;

    new-instance v1, Lorg/h2/util/SoftHashMap$SoftValue;

    iget-object v2, p0, Lorg/h2/util/SoftHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p2, v2, p1}, Lorg/h2/util/SoftHashMap$SoftValue;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/util/SoftHashMap$SoftValue;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lorg/h2/util/SoftHashMap$SoftValue;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/h2/util/SoftHashMap;->processQueue()V

    .line 79
    iget-object v0, p0, Lorg/h2/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
