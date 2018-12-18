.class public abstract Lorg/briarproject/briar/android/util/BriarAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BriarAdapter.java"

# interfaces
.implements Lorg/briarproject/briar/android/util/VersionedAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TV;>;",
        "Lorg/briarproject/briar/android/util/VersionedAdapter;"
    }
.end annotation


# instance fields
.field protected final ctx:Landroid/content/Context;

.field protected final items:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile revision:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->revision:I

    .line 24
    iput-object p1, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->ctx:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/support/v7/util/SortedList;

    new-instance v0, Lorg/briarproject/briar/android/util/BriarAdapter$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/util/BriarAdapter$1;-><init>(Lorg/briarproject/briar/android/util/BriarAdapter;)V

    invoke-direct {p1, p2, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    return-void
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getRevision()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->revision:I

    return v0
.end method

.method public incrementRevision()V
    .locals 1

    .line 125
    iget v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->revision:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->revision:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 84
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 85
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->addAll(Ljava/util/Collection;)V

    .line 86
    iget-object p1, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {p1}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    return-void
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    return-void
.end method
