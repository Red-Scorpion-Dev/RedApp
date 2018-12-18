.class public Lorg/h2/mvstore/OffHeapStore;
.super Lorg/h2/mvstore/FileStore;
.source "OffHeapStore.java"


# instance fields
.field private final memory:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/h2/mvstore/FileStore;-><init>()V

    .line 19
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    return-void
.end method

.method private writeNewEntry(JLjava/nio/ByteBuffer;)V
    .locals 5

    .line 99
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 100
    iget-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->writeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->writeCount:J

    .line 101
    iget-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->writeBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->writeBytes:J

    .line 102
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    iget-object p3, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public free(JI)V
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->free(JI)V

    .line 53
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ne v0, p3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p3, 0x1

    .line 57
    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Partial remove is not supported at position {0}"

    invoke-static {p3, p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public getDefaultRetentionTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open(Ljava/lang/String;Z[C)V
    .locals 0

    .line 24
    iget-object p1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public readFully(JI)Ljava/nio/ByteBuffer;
    .locals 5

    .line 34
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->readCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->readCount:J

    .line 41
    iget-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->readBytes:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/OffHeapStore;->readBytes:J

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    long-to-int p1, p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p3, p1

    .line 46
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, 0x1

    .line 36
    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Could not read from position {0}"

    invoke-static {p3, p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public sync()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)V
    .locals 6

    .line 110
    iget-wide v0, p0, Lorg/h2/mvstore/OffHeapStore;->writeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/OffHeapStore;->writeCount:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 112
    iput-wide v0, p0, Lorg/h2/mvstore/OffHeapStore;->fileSize:J

    .line 113
    iget-object p1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    return-void

    .line 116
    :cond_0
    iput-wide p1, p0, Lorg/h2/mvstore/OffHeapStore;->fileSize:J

    .line 117
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    iget-object v3, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 124
    new-array p2, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Could not truncate to {0}; partial truncate is not supported"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public writeFully(JLjava/nio/ByteBuffer;)V
    .locals 8

    .line 65
    iget-wide v0, p0, Lorg/h2/mvstore/OffHeapStore;->fileSize:J

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/OffHeapStore;->fileSize:J

    .line 66
    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/OffHeapStore;->writeNewEntry(JLjava/nio/ByteBuffer;)V

    return-void

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 75
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, p1

    if-nez v7, :cond_2

    if-ne v3, v4, :cond_1

    .line 83
    iget-wide p1, p0, Lorg/h2/mvstore/OffHeapStore;->writeCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lorg/h2/mvstore/OffHeapStore;->writeCount:J

    .line 84
    iget-wide p1, p0, Lorg/h2/mvstore/OffHeapStore;->writeBytes:J

    int-to-long v1, v4

    add-long/2addr p1, v1

    iput-wide p1, p0, Lorg/h2/mvstore/OffHeapStore;->writeBytes:J

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    .line 78
    :cond_1
    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v5

    const-string p1, "Could not write to position {0}; partial overwrite is not supported"

    invoke-static {v6, p1, p3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_2
    int-to-long v3, v3

    add-long/2addr v1, v3

    cmp-long v0, v1, p1

    if-gtz v0, :cond_3

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/OffHeapStore;->writeNewEntry(JLjava/nio/ByteBuffer;)V

    return-void

    .line 90
    :cond_3
    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v5

    const-string p1, "Could not write to position {0}; partial overwrite is not supported"

    invoke-static {v6, p1, p3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
