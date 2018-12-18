.class public abstract Lorg/h2/store/Page;
.super Lorg/h2/util/CacheObject;
.source "Page.java"


# static fields
.field private static final COPY_THRESHOLD:I = 0x4

.field public static final FLAG_LAST:I = 0x10

.field public static final TYPE_BTREE_LEAF:I = 0x4

.field public static final TYPE_BTREE_NODE:I = 0x5

.field public static final TYPE_DATA_LEAF:I = 0x1

.field public static final TYPE_DATA_NODE:I = 0x2

.field public static final TYPE_DATA_OVERFLOW:I = 0x3

.field public static final TYPE_EMPTY:I = 0x0

.field public static final TYPE_FREE_LIST:I = 0x6

.field public static final TYPE_STREAM_DATA:I = 0x8

.field public static final TYPE_STREAM_TRUNK:I = 0x7


# instance fields
.field protected changeCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/h2/util/CacheObject;-><init>()V

    return-void
.end method

.method protected static add([IIII)V
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 251
    aget v0, p0, p1

    add-int/2addr v0, p3

    aput v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static insert([IIII)[I
    .locals 2

    if-eqz p0, :cond_0

    .line 204
    array-length v0, p0

    if-le v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x4

    .line 207
    new-array v0, v0, [I

    if-lez p2, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 209
    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    sub-int/2addr p1, p2

    if-lez p1, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 213
    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    :cond_2
    aput p3, v0, p2

    return-object v0
.end method

.method protected static insert([JIIJ)[J
    .locals 2

    if-eqz p0, :cond_0

    .line 158
    array-length v0, p0

    if-le v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x4

    .line 161
    new-array v0, v0, [J

    if-lez p2, :cond_1

    const/4 v1, 0x0

    .line 163
    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    sub-int/2addr p1, p2

    if-lez p1, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 167
    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    :cond_2
    aput-wide p3, v0, p2

    return-object v0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .line 104
    array-length v0, p0

    if-le v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-lez p2, :cond_1

    const/4 v1, 0x0

    .line 111
    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    sub-int/2addr p1, p2

    if-lez p1, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 115
    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_2
    aput-object p3, v0, p2

    return-object v0
.end method

.method protected static remove([III)[I
    .locals 3

    .line 229
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 232
    new-array v1, v0, [I

    .line 233
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 236
    invoke-static {p0, v0, v1, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1
.end method

.method protected static remove([JII)[J
    .locals 2

    .line 183
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 186
    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 187
    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    add-int/lit8 v1, p2, 0x1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 189
    invoke-static {p0, v1, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 133
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 139
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 142
    invoke-static {p0, v1, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canMove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract moveTo(Lorg/h2/engine/Session;I)V
.end method

.method public abstract write()V
.end method
