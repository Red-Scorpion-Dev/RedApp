.class public abstract Lorg/briarproject/briar/android/sharing/InvitationActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "InvitationActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;
.implements Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/api/sharing/InvitationItem;",
        ">",
        "Lorg/briarproject/briar/android/activity/BriarActivity;",
        "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
        "TI;>;",
        "Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field protected static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter<",
            "TI;*>;"
        }
    .end annotation
.end field

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/briarproject/briar/android/sharing/InvitationActivity;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$displayInvitations$0(Lorg/briarproject/briar/android/sharing/InvitationActivity;Ljava/util/Collection;IZ)V
    .locals 1

    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object p1, Lorg/briarproject/briar/android/sharing/InvitationActivity;->LOG:Ljava/util/logging/Logger;

    const-string p2, "No more invitations available, finishing"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->supportFinishAfterTransition()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->getRevision()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 130
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->incrementRevision()V

    if-eqz p3, :cond_1

    .line 131
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->setItems(Ljava/util/Collection;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object p1, Lorg/briarproject/briar/android/sharing/InvitationActivity;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Concurrent update, reloading"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->loadInvitations(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected displayInvitations(ILjava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "TI;>;Z)V"
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;-><init>(Lorg/briarproject/briar/android/sharing/InvitationActivity;Ljava/util/Collection;IZ)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract getAcceptRes()I
.end method

.method protected abstract getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)Lorg/briarproject/briar/android/sharing/InvitationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "TI;>;)",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter<",
            "TI;*>;"
        }
    .end annotation
.end method

.method protected abstract getController()Lorg/briarproject/briar/android/sharing/InvitationController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/sharing/InvitationController<",
            "TI;>;"
        }
    .end annotation
.end method

.method protected abstract getDeclineRes()I
.end method

.method public loadInvitations(Z)V
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->getRevision()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->getController()Lorg/briarproject/briar/android/sharing/InvitationController;

    move-result-object v1

    new-instance v2, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;

    invoke-direct {v2, p0, p0, v0, p1}, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;-><init>(Lorg/briarproject/briar/android/sharing/InvitationActivity;Lorg/briarproject/briar/android/DestroyableContext;IZ)V

    invoke-interface {v1, p1, v2}, Lorg/briarproject/briar/android/sharing/InvitationController;->loadInvitations(ZLorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0059

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0, p0, p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    const p1, 0x7f0900eb

    .line 47
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 48
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 50
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;Z)V
    .locals 0

    .line 28
    check-cast p1, Lorg/briarproject/briar/api/sharing/InvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->onItemClick(Lorg/briarproject/briar/api/sharing/InvitationItem;Z)V

    return-void
.end method

.method public onItemClick(Lorg/briarproject/briar/api/sharing/InvitationItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->respondToInvitation(Lorg/briarproject/briar/api/sharing/InvitationItem;Z)V

    .line 75
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->getDeclineRes()I

    move-result v0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->getAcceptRes()I

    move-result v0

    :cond_0
    const/4 p2, 0x0

    .line 77
    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->incrementRevision()V

    .line 81
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->remove(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->supportFinishAfterTransition()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 59
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->loadInvitations(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 65
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->adapter:Lorg/briarproject/briar/android/sharing/InvitationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->clear()V

    .line 67
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    return-void
.end method

.method protected respondToInvitation(Lorg/briarproject/briar/api/sharing/InvitationItem;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->getController()Lorg/briarproject/briar/android/sharing/InvitationController;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/sharing/InvitationActivity$2;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity$2;-><init>(Lorg/briarproject/briar/android/sharing/InvitationActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, p1, p2, v1}, Lorg/briarproject/briar/android/sharing/InvitationController;->respondToInvitation(Lorg/briarproject/briar/api/sharing/InvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
