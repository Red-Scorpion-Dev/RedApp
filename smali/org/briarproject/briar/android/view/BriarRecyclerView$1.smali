.class Lorg/briarproject/briar/android/view/BriarRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "BriarRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/view/BriarRecyclerView;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView$1;->this$0:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    if-lez p2, :cond_0

    .line 97
    iget-object p1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView$1;->this$0:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    if-lez p2, :cond_0

    .line 103
    iget-object p1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView$1;->this$0:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    :cond_0
    return-void
.end method
