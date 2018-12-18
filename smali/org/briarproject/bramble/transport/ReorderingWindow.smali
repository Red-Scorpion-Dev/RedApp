.class Lorg/briarproject/bramble/transport/ReorderingWindow;
.super Ljava/lang/Object;
.source "ReorderingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/transport/ReorderingWindow$Change;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private base:J

.field private seen:[Z


# direct methods
.method constructor <init>(J[B)V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    const-wide v0, 0x100000000L

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    .line 24
    iput-wide p1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    .line 25
    array-length p1, p3

    const/16 p2, 0x8

    mul-int/lit8 p1, p1, 0x8

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 26
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 28
    aget-byte v2, p3, v0

    const/16 v3, 0x80

    shr-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method getBase()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    return-wide v0
.end method

.method getBitmap()[B
    .locals 7

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v0, v0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 41
    iget-object v5, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v4

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    aget-byte v5, v0, v3

    const/16 v6, 0x80

    shr-int/2addr v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getUnseen()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 49
    :goto_0
    iget-object v2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 50
    iget-object v2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method setSeen(J)Lorg/briarproject/bramble/transport/ReorderingWindow$Change;
    .locals 9

    .line 55
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 56
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    iget-object v2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 58
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 59
    iget-object v1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_6

    .line 60
    iget-object v1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/2addr v0, v2

    .line 62
    iget-object v1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 64
    :goto_0
    iget-object v2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 69
    new-instance p2, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;

    invoke-direct {p2, v0, p1}, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p2

    .line 72
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 75
    iget-object v5, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_2

    iget-wide v5, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    iget-wide v5, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    iget-object v7, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v7, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-wide p1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    int-to-long v4, v0

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->base:J

    const/4 p1, 0x0

    :goto_2
    add-int p2, p1, v0

    .line 81
    iget-object v4, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length v4, v4

    if-ge p2, v4, :cond_4

    iget-object v4, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    iget-object v5, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    aget-boolean p2, v5, p2

    aput-boolean p2, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 82
    :cond_4
    iget-object p1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length p1, p1

    sub-int/2addr p1, v0

    :goto_3
    iget-object p2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    array-length p2, p2

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow;->seen:[Z

    aput-boolean v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 83
    :cond_5
    new-instance p1, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;

    invoke-direct {p1, v2, v3}, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 59
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 57
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 56
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 55
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
