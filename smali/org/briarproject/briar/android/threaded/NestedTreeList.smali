.class public Lorg/briarproject/briar/android/threaded/NestedTreeList;
.super Ljava/lang/Object;
.source "NestedTreeList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/briarproject/briar/api/client/MessageTree$MessageNode;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private depthFirstCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final tree:Lorg/briarproject/briar/api/client/MessageTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/api/client/MessageTree<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/briarproject/briar/client/MessageTreeImpl;

    invoke-direct {v0}, Lorg/briarproject/briar/client/MessageTreeImpl;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/client/MessageTree;->add(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    invoke-interface {v0}, Lorg/briarproject/briar/api/client/MessageTree;->depthFirstOrder()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/client/MessageTree;->add(Ljava/util/Collection;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    invoke-interface {v0}, Lorg/briarproject/briar/api/client/MessageTree;->depthFirstOrder()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    invoke-interface {v0}, Lorg/briarproject/briar/api/client/MessageTree;->clear()V

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->tree:Lorg/briarproject/briar/api/client/MessageTree;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/client/MessageTree;->contains(Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/NestedTreeList;->depthFirstCollection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
