.class Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;
.super Ljava/lang/Object;
.source "TransactionStore.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

.field final synthetic val$includeUncommitted:Z

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Ljava/util/Iterator;Z)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iput-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->val$iterator:Ljava/util/Iterator;

    iput-boolean p3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->val$includeUncommitted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->fetchNext()V

    return-void
.end method

.method private fetchNext()V
    .locals 2

    .line 1535
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1536
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->current:Ljava/lang/Object;

    .line 1537
    iget-boolean v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->val$includeUncommitted:Z

    if-eqz v0, :cond_1

    return-void

    .line 1540
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->current:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1544
    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->current:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1549
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->current:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->current:Ljava/lang/Object;

    .line 1555
    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$3;->fetchNext()V

    return-object v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "Removing is not supported"

    .line 1561
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
