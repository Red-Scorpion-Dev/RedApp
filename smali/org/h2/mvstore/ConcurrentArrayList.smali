.class public Lorg/h2/mvstore/ConcurrentArrayList;
.super Ljava/lang/Object;
.source "ConcurrentArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    .line 53
    iget-object v1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/h2/mvstore/ConcurrentArrayList$1;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/ConcurrentArrayList$1;-><init>(Lorg/h2/mvstore/ConcurrentArrayList;)V

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    .line 32
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    .line 42
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 43
    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public declared-synchronized removeFirst(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 65
    monitor-exit p0

    return v1

    .line 67
    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 69
    new-array v2, p1, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 70
    iget-object v3, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    invoke-static {v3, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v2, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeLast(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 83
    monitor-exit p0

    return p1

    .line 85
    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0

    throw p1
.end method
