.class public Lorg/briarproject/briar/client/MessageTreeImpl;
.super Ljava/lang/Object;
.source "MessageTreeImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/client/MessageTree;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/briarproject/briar/api/client/MessageTree$MessageNode;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/api/client/MessageTree<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final unsortedLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->roots:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->unsortedLists:Ljava/util/List;

    .line 26
    sget-object v0, Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;->INSTANCE:Lorg/briarproject/briar/client/-$$Lambda$MessageTreeImpl$Ofa6dw5ieUtIQdORoj89IqIdDcM;

    iput-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic lambda$new$0(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)I
    .locals 2

    .line 27
    invoke-interface {p0}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method private markAsUnsorted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->unsortedLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->unsortedLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private parseNode(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->roots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->roots:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/client/MessageTreeImpl;->markAsUnsorted(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-direct {p0, v0}, Lorg/briarproject/briar/client/MessageTreeImpl;->markAsUnsorted(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private sortUnsorted()V
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->unsortedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    iget-object v2, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->unsortedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private traverse(Ljava/util/List;Lorg/briarproject/briar/api/client/MessageTree$MessageNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 78
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    invoke-interface {p2}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    invoke-interface {p2, p3}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->setLevel(I)V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    add-int/lit8 v1, p3, 0x1

    .line 82
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/client/MessageTreeImpl;->traverse(Ljava/util/List;Lorg/briarproject/briar/api/client/MessageTree$MessageNode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    .line 39
    iget-object v2, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    invoke-interface {v1}, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    .line 43
    invoke-direct {p0, v0}, Lorg/briarproject/briar/client/MessageTreeImpl;->parseNode(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lorg/briarproject/briar/client/MessageTreeImpl;->sortUnsorted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/client/MessageTreeImpl;->add(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->roots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    throw v0
.end method

.method public contains(Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized depthFirstOrder()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v1, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->roots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, v0, v2, v3}, Lorg/briarproject/briar/client/MessageTreeImpl;->traverse(Ljava/util/List;Lorg/briarproject/briar/api/client/MessageTree$MessageNode;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setComparator(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    iput-object p1, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->comparator:Ljava/util/Comparator;

    .line 90
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->roots:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    iget-object v0, p0, Lorg/briarproject/briar/client/MessageTreeImpl;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    throw p1
.end method
