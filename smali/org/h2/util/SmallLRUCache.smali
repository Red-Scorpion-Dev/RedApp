.class public Lorg/h2/util/SmallLRUCache;
.super Ljava/util/LinkedHashMap;
.source "SmallLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private size:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    .line 23
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 24
    iput p1, p0, Lorg/h2/util/SmallLRUCache;->size:I

    return-void
.end method

.method public static newInstance(I)Lorg/h2/util/SmallLRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/h2/util/SmallLRUCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/h2/util/SmallLRUCache;

    invoke-direct {v0, p0}, Lorg/h2/util/SmallLRUCache;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/h2/util/SmallLRUCache;->size()I

    move-result p1

    iget v0, p0, Lorg/h2/util/SmallLRUCache;->size:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 40
    iput p1, p0, Lorg/h2/util/SmallLRUCache;->size:I

    return-void
.end method
