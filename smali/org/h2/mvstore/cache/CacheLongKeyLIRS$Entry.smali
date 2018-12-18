.class Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
.super Ljava/lang/Object;
.source "CacheLongKeyLIRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field key:J

.field mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field memory:I

.field queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field topMove:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isHot()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
