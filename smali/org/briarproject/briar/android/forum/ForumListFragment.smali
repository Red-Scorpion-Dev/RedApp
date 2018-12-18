.class public Lorg/briarproject/briar/android/forum/ForumListFragment;
.super Lorg/briarproject/briar/android/fragment/BaseEventFragment;
.source "ForumListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.forum.ForumListFragment"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

.field volatile forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

.field volatile forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field private snackbar:Landroid/support/design/widget/Snackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;-><init>()V

    return-void
.end method

.method private displayAvailableForums(I)V
    .locals 1

    .line 207
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;-><init>(Lorg/briarproject/briar/android/forum/ForumListFragment;I)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayForums(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/forum/ForumListItem;",
            ">;)V"
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;-><init>(Lorg/briarproject/briar/android/forum/ForumListFragment;ILjava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$displayAvailableForums$3(Lorg/briarproject/briar/android/forum/ForumListFragment;I)V
    .locals 6

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 211
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 214
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$displayForums$1(Lorg/briarproject/briar/android/forum/ForumListFragment;ILjava/util/Collection;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getRevision()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 183
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->incrementRevision()V

    .line 184
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 187
    :cond_1
    sget-object p1, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Concurrent update, reloading"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->loadForums()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadAvailableForums$2(Lorg/briarproject/briar/android/forum/ForumListFragment;)V
    .locals 5

    .line 196
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 197
    iget-object v2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    invoke-interface {v2}, Lorg/briarproject/briar/api/forum/ForumSharingManager;->getInvitations()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 198
    sget-object v3, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading available"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 199
    invoke-direct {p0, v2}, Lorg/briarproject/briar/android/forum/ForumListFragment;->displayAvailableForums(I)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadForums$0(Lorg/briarproject/briar/android/forum/ForumListFragment;I)V
    .locals 7

    .line 161
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v3, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-interface {v3}, Lorg/briarproject/briar/api/forum/ForumManager;->getForums()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/api/forum/Forum;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :try_start_1
    iget-object v5, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    .line 166
    invoke-virtual {v4}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/briarproject/briar/api/forum/ForumManager;->getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v5

    .line 167
    new-instance v6, Lorg/briarproject/briar/android/forum/ForumListItem;

    invoke-direct {v6, v4, v5}, Lorg/briarproject/briar/android/forum/ForumListItem;-><init>(Lorg/briarproject/briar/api/forum/Forum;Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 172
    :cond_0
    :try_start_2
    sget-object v3, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Full load"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 173
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/android/forum/ForumListFragment;->displayForums(ILjava/util/Collection;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 175
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$removeForum$5(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->incrementRevision()V

    .line 261
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I

    move-result p1

    .line 262
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/forum/ForumListItem;

    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateItem$4(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->incrementRevision()V

    .line 249
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I

    move-result p1

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/forum/ForumListItem;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->addHeader(Lorg/briarproject/briar/api/forum/ForumPostHeader;)V

    .line 253
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {p2, p1, v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->updateItemAt(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private loadAvailableForums()V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    new-instance v1, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tKvXP6oSRo6Q6vi3u-bZLkoTNPs;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tKvXP6oSRo6Q6vi3u-bZLkoTNPs;-><init>(Lorg/briarproject/briar/android/forum/ForumListFragment;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadForums()V
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getRevision()I

    move-result v0

    .line 159
    iget-object v1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    new-instance v2, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tzpBeqhtlPSfAizWD9Ftg0DCjrI;

    invoke-direct {v2, p0, v0}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tzpBeqhtlPSfAizWD9Ftg0DCjrI;-><init>(Lorg/briarproject/briar/android/forum/ForumListFragment;I)V

    invoke-interface {v1, v2}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/forum/ForumListFragment;
    .locals 2

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    new-instance v1, Lorg/briarproject/briar/android/forum/ForumListFragment;

    invoke-direct {v1}, Lorg/briarproject/briar/android/forum/ForumListFragment;-><init>()V

    .line 79
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private removeForum(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 259
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;-><init>(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateItem(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;)V
    .locals 1

    .line 247
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;-><init>(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 221
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 222
    sget-object p1, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact removed, reloading available forums"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->loadAvailableForums()V

    goto/16 :goto_0

    .line 224
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    if-eqz v0, :cond_1

    .line 225
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    .line 226
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    sget-object v0, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 227
    sget-object p1, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Forum added, reloading forums"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->loadForums()V

    goto :goto_0

    .line 230
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    if-eqz v0, :cond_2

    .line 231
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    .line 232
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Forum removed, removing from list"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/forum/ForumListFragment;->removeForum(Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 236
    :cond_2
    instance-of v0, p1, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    if-eqz v0, :cond_3

    .line 237
    check-cast p1, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    .line 238
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Forum post added, updating item"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->getHeader()Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/forum/ForumListFragment;->updateItem(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;)V

    goto :goto_0

    .line 240
    :cond_3
    instance-of p1, p1, Lorg/briarproject/briar/api/forum/event/ForumInvitationRequestReceivedEvent;

    if-eqz p1, :cond_4

    .line 241
    sget-object p1, Lorg/briarproject/briar/android/forum/ForumListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Forum invitation received, reloading available forums"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->loadAvailableForums()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 117
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/forum/ForumListFragment;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 270
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0007

    .line 139
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 140
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f1100be

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    const p3, 0x7f0c004e

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/briarproject/briar/android/forum/ForumListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    const p2, 0x7f0900bd

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 98
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const-string p3, ""

    const/4 v0, -0x2

    invoke-static {p2, p3, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    .line 102
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p2}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f060031

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    const p3, 0x7f1101b3

    invoke-virtual {p2, p3, p0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 104
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    .line 105
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f06002e

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 104
    invoke-virtual {p2, p3}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090020

    if-eq v0, v1, :cond_0

    .line 153
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 148
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/forum/CreateForumActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 122
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onStart()V

    .line 123
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllForumPostNotifications()V

    .line 124
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->loadForums()V

    .line 125
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->loadAvailableForums()V

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 131
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onStop()V

    .line 132
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->adapter:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->clear()V

    .line 133
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    .line 134
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method
