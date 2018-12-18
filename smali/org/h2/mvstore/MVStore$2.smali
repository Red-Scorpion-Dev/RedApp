.class Lorg/h2/mvstore/MVStore$2;
.super Ljava/lang/Object;
.source "MVStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/MVStore;->compactGetOldChunks(II)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/mvstore/Chunk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/mvstore/MVStore;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVStore;)V
    .locals 0

    .line 1860
    iput-object p1, p0, Lorg/h2/mvstore/MVStore$2;->this$0:Lorg/h2/mvstore/MVStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1860
    check-cast p1, Lorg/h2/mvstore/Chunk;

    check-cast p2, Lorg/h2/mvstore/Chunk;

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVStore$2;->compare(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/Chunk;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/Chunk;)I
    .locals 3

    .line 1863
    new-instance v0, Ljava/lang/Integer;

    iget v1, p1, Lorg/h2/mvstore/Chunk;->collectPriority:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget v1, p2, Lorg/h2/mvstore/Chunk;->collectPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide p1, p2, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :cond_0
    return v0
.end method
