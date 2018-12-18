.class public abstract Lorg/h2/util/CacheObject;
.super Ljava/lang/Object;
.source "CacheObject.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/util/CacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field public cacheChained:Lorg/h2/util/CacheObject;

.field public cacheNext:Lorg/h2/util/CacheObject;

.field public cachePrevious:Lorg/h2/util/CacheObject;

.field private changed:Z

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canRemove()Z
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lorg/h2/util/CacheObject;

    invoke-virtual {p0, p1}, Lorg/h2/util/CacheObject;->compareTo(Lorg/h2/util/CacheObject;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/util/CacheObject;)I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-static {v0, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public abstract getMemory()I
.end method

.method public getPos()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/h2/util/CacheObject;->pos:I

    return v0
.end method

.method public isChanged()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/h2/util/CacheObject;->changed:Z

    return v0
.end method

.method public isStream()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setChanged(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/h2/util/CacheObject;->changed:Z

    return-void
.end method

.method public setPos(I)V
    .locals 1

    .line 52
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "setPos too late"

    .line 54
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 57
    :cond_1
    iput p1, p0, Lorg/h2/util/CacheObject;->pos:I

    return-void
.end method
