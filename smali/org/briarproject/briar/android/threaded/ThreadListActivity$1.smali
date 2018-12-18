.class Lorg/briarproject/briar/android/threaded/ThreadListActivity$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$1;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 115
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$1;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$000(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 106
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$1;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$000(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V

    :cond_0
    return-void
.end method
