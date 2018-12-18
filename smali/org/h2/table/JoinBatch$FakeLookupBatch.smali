.class final Lorg/h2/table/JoinBatch$FakeLookupBatch;
.super Ljava/lang/Object;
.source "JoinBatch.java"

# interfaces
.implements Lorg/h2/index/IndexLookupBatch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeLookupBatch"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final filter:Lorg/h2/table/TableFilter;

.field private first:Lorg/h2/result/SearchRow;

.field private full:Z

.field private last:Lorg/h2/result/SearchRow;

.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 685
    const-class v0, Lorg/h2/table/JoinBatch;

    return-void
.end method

.method constructor <init>(Lorg/h2/table/TableFilter;)V
    .locals 1

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Lorg/h2/table/JoinBatch$SingletonList;

    invoke-direct {v0}, Lorg/h2/table/JoinBatch$SingletonList;-><init>()V

    iput-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->result:Ljava/util/List;

    .line 696
    iput-object p1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->filter:Lorg/h2/table/TableFilter;

    return-void
.end method


# virtual methods
.method public addSearchRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Z
    .locals 0

    .line 714
    iput-object p1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->first:Lorg/h2/result/SearchRow;

    .line 715
    iput-object p2, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->last:Lorg/h2/result/SearchRow;

    const/4 p1, 0x1

    .line 716
    iput-boolean p1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->full:Z

    return p1
.end method

.method public find()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;>;"
        }
    .end annotation

    .line 727
    iget-boolean v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->full:Z

    if-nez v0, :cond_0

    .line 728
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->filter:Lorg/h2/table/TableFilter;

    iget-object v2, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->first:Lorg/h2/result/SearchRow;

    iget-object v3, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->last:Lorg/h2/result/SearchRow;

    invoke-interface {v0, v1, v2, v3}, Lorg/h2/index/Index;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->result:Ljava/util/List;

    new-instance v2, Lorg/h2/util/DoneFuture;

    invoke-direct {v2, v0}, Lorg/h2/util/DoneFuture;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 732
    iput-boolean v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->full:Z

    const/4 v0, 0x0

    .line 733
    iput-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->last:Lorg/h2/result/SearchRow;

    iput-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->first:Lorg/h2/result/SearchRow;

    .line 734
    iget-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->result:Ljava/util/List;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "fake"

    return-object v0
.end method

.method public isBatchFull()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->full:Z

    return v0
.end method

.method public reset(Z)V
    .locals 2

    const/4 p1, 0x0

    .line 706
    iput-boolean p1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->full:Z

    const/4 v0, 0x0

    .line 707
    iput-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->last:Lorg/h2/result/SearchRow;

    iput-object v0, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->first:Lorg/h2/result/SearchRow;

    .line 708
    iget-object v1, p0, Lorg/h2/table/JoinBatch$FakeLookupBatch;->result:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
