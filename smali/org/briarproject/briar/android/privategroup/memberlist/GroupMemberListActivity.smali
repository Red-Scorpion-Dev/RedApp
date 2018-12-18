.class public Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "GroupMemberListActivity.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field private adapter:Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;

.field controller:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

.field private groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->adapter:Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;

    return-object p0
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 37
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "briar.GROUP_ID"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const p1, 0x7f0900eb

    .line 51
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 52
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    new-instance p1, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->adapter:Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;

    .line 55
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->adapter:Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0900d6

    .line 57
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1101b2

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId in intent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 63
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->controller:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    new-instance v2, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;-><init>(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;->loadMembers(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    .line 77
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 82
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method
