.class Lorg/h2/mvstore/MVStore$1;
.super Ljava/lang/Object;
.source "MVStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/MVStore;->compactGetMoveBlocks(JJ)Ljava/util/ArrayList;
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

    .line 1664
    iput-object p1, p0, Lorg/h2/mvstore/MVStore$1;->this$0:Lorg/h2/mvstore/MVStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1664
    check-cast p1, Lorg/h2/mvstore/Chunk;

    check-cast p2, Lorg/h2/mvstore/Chunk;

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVStore$1;->compare(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/Chunk;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/Chunk;)I
    .locals 2

    .line 1667
    iget-wide v0, p1, Lorg/h2/mvstore/Chunk;->block:J

    iget-wide p1, p2, Lorg/h2/mvstore/Chunk;->block:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method
