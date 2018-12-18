.class abstract Lorg/briarproject/briar/android/sharing/SharingStatusActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "SharingStatusActivity.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private adapter:Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;

.field connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method private displaySharedWith(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/android/contact/ContactItem;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;-><init>(Lorg/briarproject/briar/android/sharing/SharingStatusActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$displaySharedWith$1(Lorg/briarproject/briar/android/sharing/SharingStatusActivity;Ljava/util/List;)V
    .locals 1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->adapter:Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;->addAll(Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadSharedWith$0(Lorg/briarproject/briar/android/sharing/SharingStatusActivity;)V
    .locals 5

    .line 106
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->getSharedWith()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    .line 108
    iget-object v3, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v3

    .line 109
    new-instance v4, Lorg/briarproject/briar/android/contact/ContactItem;

    invoke-direct {v4, v2, v3}, Lorg/briarproject/briar/android/contact/ContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;Z)V

    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->displaySharedWith(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private loadSharedWith()V
    .locals 1

    .line 104
    new-instance v0, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$oqCsa7KiS6bVsZT8RlJo6MWFm5w;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$oqCsa7KiS6bVsZT8RlJo6MWFm5w;-><init>(Lorg/briarproject/briar/android/sharing/SharingStatusActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method abstract getInfoText()I
.end method

.method protected abstract getSharedWith()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 51
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "briar.GROUP_ID"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const p1, 0x7f0900eb

    .line 58
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 59
    new-instance p1, Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->adapter:Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;

    .line 60
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 61
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->adapter:Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v0, 0x7f11012c

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(Ljava/lang/String;)V

    const p1, 0x7f0900d6

    .line 64
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->getInfoText()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 70
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 71
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->loadSharedWith()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 76
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 77
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->adapter:Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;->clear()V

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    return-void
.end method
