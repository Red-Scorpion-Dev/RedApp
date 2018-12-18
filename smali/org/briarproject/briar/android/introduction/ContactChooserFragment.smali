.class public Lorg/briarproject/briar/android/introduction/ContactChooserFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "ContactChooserFragment.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.introduction.ContactChooserFragment"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

.field volatile c1:Lorg/briarproject/bramble/api/contact/Contact;

.field volatile connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field volatile contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field volatile conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private displayContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/android/contact/ContactListItem;",
            ">;)V"
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$Icw6fpoaRfxsNbAIABjnaNTbUZk;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$Icw6fpoaRfxsNbAIABjnaNTbUZk;-><init>(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$displayContacts$2(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Ljava/util/List;)V
    .locals 1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->addAll(Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadContacts$1(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V
    .locals 6

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->getActiveContacts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    .line 120
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    iget-object v4, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v3, v4}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iput-object v2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->c1:Lorg/briarproject/bramble/api/contact/Contact;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 125
    invoke-interface {v4, v3}, Lorg/briarproject/briar/api/conversation/ConversationManager;->getGroupCount(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 127
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v4

    .line 128
    new-instance v5, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-direct {v5, v2, v4, v3}, Lorg/briarproject/briar/android/contact/ContactListItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;ZLorg/briarproject/briar/api/client/MessageTracker$GroupCount;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->displayContacts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Landroid/view/View;Lorg/briarproject/briar/android/contact/ContactListItem;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->c1:Lorg/briarproject/bramble/api/contact/Contact;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->c1:Lorg/briarproject/bramble/api/contact/Contact;

    invoke-direct {p0, p2, p1}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->showMessageScreen(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private loadContacts()V
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    new-instance v1, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$CAgdKGt8rYv_ht4CRuDejRgZ5XQ;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$CAgdKGt8rYv_ht4CRuDejRgZ5XQ;-><init>(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstance(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/android/introduction/ContactChooserFragment;
    .locals 3

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    new-instance v1, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;

    invoke-direct {v1}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;-><init>()V

    const-string v2, "briar.CONTACT_ID"

    .line 58
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showMessageScreen(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 0

    .line 148
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p1

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->newInstance(II)Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 112
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$3KF0AOSCRvBG_OX_9ePJ_LYNj_w;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$3KF0AOSCRvBG_OX_9ePJ_LYNj_w;-><init>(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V

    .line 80
    new-instance p3, Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    iput-object p3, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    const p2, 0x7f0900eb

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 83
    iget-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110122

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(I)V

    .line 87
    new-instance p2, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "briar.CONTACT_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p2, p3}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 94
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 95
    invoke-direct {p0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->loadContacts()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 101
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->adapter:Lorg/briarproject/briar/android/contact/ContactListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->clear()V

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    return-void
.end method
