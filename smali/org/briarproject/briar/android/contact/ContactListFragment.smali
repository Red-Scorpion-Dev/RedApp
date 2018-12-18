.class public Lorg/briarproject/briar/android/contact/ContactListFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "ContactListFragment.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.contact.ContactListFragment"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

.field connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field volatile contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field volatile conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

.field eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private displayContacts(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/android/contact/ContactListItem;",
            ">;)V"
        }
    .end annotation

    .line 216
    new-instance v0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;-><init>(Lorg/briarproject/briar/android/contact/ContactListFragment;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$displayContacts$2(Lorg/briarproject/briar/android/contact/ContactListFragment;ILjava/util/List;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->getRevision()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 218
    iget-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->incrementRevision()V

    .line 219
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 222
    :cond_1
    sget-object p1, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Concurrent update, reloading"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->loadContacts()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadContacts$1(Lorg/briarproject/briar/android/contact/ContactListFragment;I)V
    .locals 8

    .line 193
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v3, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/contact/ContactManager;->getActiveContacts()Ljava/util/Collection;

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

    check-cast v4, Lorg/briarproject/bramble/api/contact/Contact;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v5

    .line 198
    iget-object v6, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 199
    invoke-interface {v6, v5}, Lorg/briarproject/briar/api/conversation/ConversationManager;->getGroupCount(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v5

    .line 200
    iget-object v6, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 201
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v6

    .line 202
    new-instance v7, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-direct {v7, v4, v6, v5}, Lorg/briarproject/briar/android/contact/ContactListItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;ZLorg/briarproject/briar/api/client/MessageTracker$GroupCount;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchContactException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 207
    :cond_0
    :try_start_2
    sget-object v3, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Full load"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 208
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/android/contact/ContactListFragment;->displayContacts(ILjava/util/List;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 210
    sget-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/contact/ContactListFragment;Landroid/view/View;Lorg/briarproject/briar/android/contact/ContactListItem;)V
    .locals 4

    .line 112
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/conversation/ConversationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    const-string v1, "briar.CONTACT_ID"

    .line 115
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 120
    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    .line 122
    invoke-virtual {v1, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->findItemPosition(Ljava/lang/Object;)I

    move-result p2

    .line 121
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;

    .line 123
    iget-object v0, p2, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v1, p2, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->avatar:Landroid/widget/ImageView;

    .line 125
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 126
    iget-object v1, p2, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->bulb:Landroid/widget/ImageView;

    iget-object p2, p2, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->bulb:Landroid/widget/ImageView;

    .line 128
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {v1, p2}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object p2

    .line 130
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/support/v4/util/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p2

    .line 132
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 133
    invoke-virtual {p2}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 132
    invoke-static {v0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/contact/ContactListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$removeItem$4(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->incrementRevision()V

    .line 270
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/contact/ContactId;)I

    move-result p1

    .line 271
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/contact/ContactListItem;

    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setConnected$5(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->incrementRevision()V

    .line 279
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/contact/ContactId;)I

    move-result p1

    .line 280
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/contact/ContactListItem;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->setConnected(Z)V

    .line 283
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateItem$3(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->incrementRevision()V

    .line 258
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/contact/ContactId;)I

    move-result p1

    .line 259
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/contact/ContactListItem;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->addMessage(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    .line 262
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p2, p1, v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->updateItemAt(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private loadContacts()V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->getRevision()I

    move-result v0

    .line 191
    iget-object v1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    new-instance v2, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$MEdHtErpuZJKccIr_wr4no0jrCY;

    invoke-direct {v2, p0, v0}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$MEdHtErpuZJKccIr_wr4no0jrCY;-><init>(Lorg/briarproject/briar/android/contact/ContactListFragment;I)V

    invoke-interface {v1, v2}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/contact/ContactListFragment;
    .locals 2

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    new-instance v1, Lorg/briarproject/briar/android/contact/ContactListFragment;

    invoke-direct {v1}, Lorg/briarproject/briar/android/contact/ContactListFragment;-><init>()V

    .line 86
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private removeItem(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 268
    new-instance v0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;-><init>(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setConnected(Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 1

    .line 277
    new-instance v0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;-><init>(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateItem(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 1

    .line 256
    new-instance v0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;-><init>(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 230
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    if-eqz v0, :cond_1

    .line 231
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    .line 232
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object p1, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact activated, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->loadContacts()V

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Contact deactivated, removing item"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contact/ContactListFragment;->removeItem(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 239
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    if-eqz v0, :cond_2

    .line 240
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->setConnected(Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    goto :goto_0

    .line 241
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    if-eqz v0, :cond_3

    .line 242
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->setConnected(Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    goto :goto_0

    .line 243
    :cond_3
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_4

    .line 244
    sget-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Contact removed, removing item"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 245
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contact/ContactListFragment;->removeItem(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 246
    :cond_4
    instance-of v0, p1, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;

    if-eqz v0, :cond_5

    .line 247
    sget-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Conversation message received, updating item"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 248
    check-cast p1, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;

    .line 250
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->getMessageHeader()Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->updateItem(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lorg/briarproject/briar/android/contact/ContactListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 97
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/contact/ContactListFragment;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0002

    .line 152
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f11007a

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 110
    new-instance p2, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$DvpyzIeg2gO44NHGy22U4l_irhw;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$DvpyzIeg2gO44NHGy22U4l_irhw;-><init>(Lorg/briarproject/briar/android/contact/ContactListFragment;)V

    .line 139
    new-instance p3, Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    iput-object p3, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    const p2, 0x7f0900eb

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 141
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f0808f4

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyImage(I)V

    .line 144
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110122

    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110123

    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyAction(Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090011

    if-eq v0, v1, :cond_0

    .line 166
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 161
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/contact/ContactListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 172
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 173
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 174
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllContactNotifications()V

    .line 175
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllIntroductionNotifications()V

    .line 176
    invoke-direct {p0}, Lorg/briarproject/briar/android/contact/ContactListFragment;->loadContacts()V

    .line 177
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 182
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 183
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 184
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->clear()V

    .line 185
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    .line 186
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method
