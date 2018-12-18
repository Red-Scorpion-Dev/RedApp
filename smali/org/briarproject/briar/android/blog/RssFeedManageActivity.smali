.class public Lorg/briarproject/briar/android/blog/RssFeedManageActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "RssFeedManageActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

.field volatile feedManager:Lorg/briarproject/briar/api/feed/FeedManager;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method private deleteFeed(Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 1

    .line 147
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayFeeds(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/feed/Feed;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$sdXSHDDxPCNOti4nT3kr1164dxI;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$sdXSHDDxPCNOti4nT3kr1164dxI;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$deleteFeed$3(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 2

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->feedManager:Lorg/briarproject/briar/api/feed/FeedManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/feed/FeedManager;->removeFeed(Lorg/briarproject/briar/api/feed/Feed;)V

    .line 150
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->onFeedDeleted(Lorg/briarproject/briar/api/feed/Feed;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    sget-object v0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 153
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->onDeleteError()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$displayFeeds$2(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;ILjava/util/List;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->getRevision()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 136
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->incrementRevision()V

    .line 137
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 140
    :cond_1
    sget-object p1, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Concurrent update, reloading"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->loadFeeds()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadFeeds$1(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;I)V
    .locals 2

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->feedManager:Lorg/briarproject/briar/api/feed/FeedManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/feed/FeedManager;->getFeeds()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->displayFeeds(ILjava/util/List;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 128
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->onLoadError()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onDeleteClick$0(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->deleteFeed(Lorg/briarproject/briar/api/feed/Feed;)V

    return-void
.end method

.method public static synthetic lambda$onDeleteError$6(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v1, 0x7f110043

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public static synthetic lambda$onFeedDeleted$5(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->incrementRevision()V

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onLoadError$4(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(I)V

    .line 161
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    return-void
.end method

.method private loadFeeds()V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->getRevision()I

    move-result v0

    .line 123
    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;

    invoke-direct {v1, p0, v0}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;I)V

    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDeleteError()V
    .locals 1

    .line 173
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$gxlrEPGXgbdxGwMxuQmigrq2GkA;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$gxlrEPGXgbdxGwMxuQmigrq2GkA;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFeedDeleted(Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 1

    .line 166
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$2_kpM-TxhFHs6iizilngVjHx1l0;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$2_kpM-TxhFHs6iizilngVjHx1l0;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onLoadError()V
    .locals 1

    .line 159
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$xiXJrveL0UMWzPrQ0aRBDptdFMg;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$xiXJrveL0UMWzPrQ0aRBDptdFMg;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 95
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 49
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->setContentView(I)V

    .line 51
    new-instance p1, Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-direct {p1, p0, p0}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    const p1, 0x7f0900b6

    .line 53
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 54
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000d

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDeleteClick(Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 3

    .line 108
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;-><init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V

    .line 110
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {p1, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f110048

    .line 112
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110049

    .line 114
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110062

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f11004a

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public onFeedClick(Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/blog/BlogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "briar.GROUP_ID"

    .line 101
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getBlogId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090033

    if-eq v0, v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->onBackPressed()V

    return v2
.end method

.method public onStart()V
    .locals 0

    .line 60
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 61
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->loadFeeds()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 66
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 67
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->adapter:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->clear()V

    .line 68
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    return-void
.end method
