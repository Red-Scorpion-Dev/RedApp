.class public Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "GroupListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;
.implements Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.privategroup.list.GroupListFragment"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

.field controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field private snackbar:Landroid/support/design/widget/Snackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadGroups()V

    return-void
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Landroid/support/design/widget/Snackbar;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method private loadAvailableGroups()V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController;->loadAvailableGroups(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method private loadGroups()V
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->getRevision()I

    move-result v0

    .line 190
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    new-instance v2, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;

    invoke-direct {v2, p0, p0, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/briar/android/DestroyableContext;I)V

    invoke-interface {v1, v2}, Lorg/briarproject/briar/android/privategroup/list/GroupListController;->loadGroups(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;
    .locals 1

    .line 50
    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 89
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)V

    .line 90
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListController;->setGroupListListener(Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000a

    .line 113
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f1100c0

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    const p2, 0x7f0900eb

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 72
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f0808f6

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyImage(I)V

    .line 73
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f1100dc

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(I)V

    .line 74
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f1100dd

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyAction(I)V

    .line 75
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const-string p3, ""

    const/4 v0, -0x2

    invoke-static {p2, p3, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    .line 79
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p2}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f060031

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    const p3, 0x7f1101b3

    invoke-virtual {p2, p3, p0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 81
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->snackbar:Landroid/support/design/widget/Snackbar;

    .line 82
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f06002e

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 81
    invoke-virtual {p2, p3}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    return-object p1
.end method

.method public onGroupAdded(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadGroups()V

    return-void
.end method

.method public onGroupDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->incrementRevision()V

    .line 175
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I

    move-result p1

    .line 176
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->setDissolved()V

    .line 179
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v1, p1, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->updateItemAt(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGroupInvitationReceived()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadAvailableGroups()V

    return-void
.end method

.method public onGroupMessageAdded(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->incrementRevision()V

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I

    move-result v0

    .line 147
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->addMessageHeader(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V

    .line 150
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->updateItemAt(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGroupRemoveClick(Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$1;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, p1, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController;->removeGroup(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method

.method public onGroupRemoved(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->incrementRevision()V

    .line 169
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->removeItem(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090012

    if-eq v0, v1, :cond_0

    .line 125
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 121
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 95
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListController;->onStart()V

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    .line 98
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadGroups()V

    .line 99
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadAvailableGroups()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 104
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->controller:Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListController;->onStop()V

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    .line 107
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->adapter:Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->clear()V

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    return-void
.end method
