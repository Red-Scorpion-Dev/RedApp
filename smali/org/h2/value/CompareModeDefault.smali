.class public Lorg/h2/value/CompareModeDefault;
.super Lorg/h2/value/CompareMode;
.source "CompareModeDefault.java"


# instance fields
.field private final collationKeys:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "Ljava/text/CollationKey;",
            ">;"
        }
    .end annotation
.end field

.field private final collator:Ljava/text/Collator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/value/CompareMode;-><init>(Ljava/lang/String;IZ)V

    .line 26
    invoke-static {p1}, Lorg/h2/value/CompareMode;->getCollator(Ljava/lang/String;)Ljava/text/Collator;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/value/CompareModeDefault;->collator:Ljava/text/Collator;

    .line 27
    iget-object p3, p0, Lorg/h2/value/CompareModeDefault;->collator:Ljava/text/Collator;

    if-eqz p3, :cond_1

    .line 30
    iget-object p1, p0, Lorg/h2/value/CompareModeDefault;->collator:Ljava/text/Collator;

    invoke-virtual {p1, p2}, Ljava/text/Collator;->setStrength(I)V

    .line 31
    sget p1, Lorg/h2/engine/SysProperties;->COLLATOR_CACHE_SIZE:I

    if-eqz p1, :cond_0

    .line 33
    invoke-static {p1}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/value/CompareModeDefault;->collationKeys:Lorg/h2/util/SmallLRUCache;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lorg/h2/value/CompareModeDefault;->collationKeys:Lorg/h2/util/SmallLRUCache;

    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private getKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/h2/value/CompareModeDefault;->collationKeys:Lorg/h2/util/SmallLRUCache;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/h2/value/CompareModeDefault;->collationKeys:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v1, p1}, Lorg/h2/util/SmallLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CollationKey;

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/h2/value/CompareModeDefault;->collator:Ljava/text/Collator;

    invoke-virtual {v1, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lorg/h2/value/CompareModeDefault;->collationKeys:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v2, p1, v1}, Lorg/h2/util/SmallLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public compareString(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 47
    :cond_0
    iget-object p3, p0, Lorg/h2/value/CompareModeDefault;->collationKeys:Lorg/h2/util/SmallLRUCache;

    if-eqz p3, :cond_1

    .line 48
    invoke-direct {p0, p1}, Lorg/h2/value/CompareModeDefault;->getKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    .line 49
    invoke-direct {p0, p2}, Lorg/h2/value/CompareModeDefault;->getKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result p1

    goto :goto_0

    .line 52
    :cond_1
    iget-object p3, p0, Lorg/h2/value/CompareModeDefault;->collator:Ljava/text/Collator;

    invoke-virtual {p3, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .locals 1

    add-int/lit8 v0, p2, 0x1

    .line 60
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p4, 0x1

    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lorg/h2/value/CompareModeDefault;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
