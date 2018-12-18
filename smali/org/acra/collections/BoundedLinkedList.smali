.class public final Lorg/acra/collections/BoundedLinkedList;
.super Ljava/util/LinkedList;
.source "BoundedLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 36
    iput p1, p0, Lorg/acra/collections/BoundedLinkedList;->maxSize:I

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/collections/BoundedLinkedList;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->removeFirst()Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/collections/BoundedLinkedList;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->removeFirst()Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 102
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 73
    iget v1, p0, Lorg/acra/collections/BoundedLinkedList;->maxSize:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 74
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 75
    :goto_0
    iget v3, p0, Lorg/acra/collections/BoundedLinkedList;->maxSize:I

    sub-int v3, v0, v3

    if-ge p1, v3, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    iget v1, p0, Lorg/acra/collections/BoundedLinkedList;->maxSize:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 83
    invoke-virtual {p0, v2, v0}, Lorg/acra/collections/BoundedLinkedList;->removeRange(II)V

    .line 85
    :cond_2
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 115
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lorg/acra/collections/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lorg/acra/collections/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lorg/acra/collections/BoundedLinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lorg/acra/collections/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lorg/acra/collections/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {p0}, Lorg/acra/collections/BoundedLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
