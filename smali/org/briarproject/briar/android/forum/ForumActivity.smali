.class public Lorg/briarproject/briar/android/forum/ForumActivity;
.super Lorg/briarproject/briar/android/threaded/ThreadListActivity;
.source "ForumActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/forum/ForumController$ForumListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/threaded/ThreadListActivity<",
        "Lorg/briarproject/briar/api/forum/Forum;",
        "Lorg/briarproject/briar/android/forum/ForumItem;",
        "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter<",
        "Lorg/briarproject/briar/android/forum/ForumItem;",
        ">;>;",
        "Lorg/briarproject/briar/android/forum/ForumController$ForumListener;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field forumController:Lorg/briarproject/briar/android/forum/ForumController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;-><init>()V

    return-void
.end method

.method private deleteForum()V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->forumController:Lorg/briarproject/briar/android/forum/ForumController;

    new-instance v1, Lorg/briarproject/briar/android/forum/ForumActivity$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/forum/ForumActivity$1;-><init>(Lorg/briarproject/briar/android/forum/ForumActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/forum/ForumController;->deleteNamedGroup(Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/forum/ForumActivity;Landroid/view/View;)V
    .locals 2

    .line 71
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 73
    iget-object v1, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$showUnsubscribeDialog$1(Lorg/briarproject/briar/android/forum/ForumActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumActivity;->deleteForum()V

    return-void
.end method

.method private showUnsubscribeDialog()V
    .locals 3

    .line 144
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumActivity$DZrEGi9b46UVvrEq7xtBadiVBoI;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumActivity$DZrEGi9b46UVvrEq7xtBadiVBoI;-><init>(Lorg/briarproject/briar/android/forum/ForumActivity;)V

    .line 145
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1200ca

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110093

    .line 147
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/forum/ForumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f11008f

    .line 148
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/forum/ForumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f11008c

    .line 149
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110062

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/support/v7/widget/LinearLayoutManager;)Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/LinearLayoutManager;",
            ")",
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter<",
            "Lorg/briarproject/briar/android/forum/ForumItem;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;-><init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Landroid/support/v7/widget/LinearLayoutManager;)V

    return-object v0
.end method

.method protected getController()Lorg/briarproject/briar/android/threaded/ThreadListController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/threaded/ThreadListController<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/android/forum/ForumItem;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->forumController:Lorg/briarproject/briar/android/forum/ForumController;

    return-object v0
.end method

.method protected getItemPostedString()I
    .locals 1

    const v0, 0x7f1100b8

    return v0
.end method

.method protected getMaxTextLength()I
    .locals 1

    const/16 v0, 0x7c00

    return v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 49
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/forum/ForumActivity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const p1, 0x7f1100bd

    .line 95
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->displaySnackbar(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->setUpCustomToolbar(Z)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.GROUP_NAME"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumActivity;->loadNamedGroup()V

    :goto_0
    if-eqz p1, :cond_1

    .line 70
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumActivity$CGyYJvdOCAexBJZh0cLd1qr_LuM;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumActivity$CGyYJvdOCAexBJZh0cLd1qr_LuM;-><init>(Lorg/briarproject/briar/android/forum/ForumActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onForumLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/SharingController;->remove(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 173
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/SharingController;->getTotalCount()I

    move-result p1

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    .line 174
    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result v0

    .line 173
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/forum/ForumActivity;->setToolbarSubTitle(II)V

    return-void
.end method

.method protected bridge synthetic onNamedGroupLoaded(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/briarproject/briar/api/forum/Forum;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->onNamedGroupLoaded(Lorg/briarproject/briar/api/forum/Forum;)V

    return-void
.end method

.method protected onNamedGroupLoaded(Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/high16 v1, 0x4000000

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 119
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "briar.GROUP_ID"

    .line 121
    iget-object v1, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 113
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/sharing/ShareForumActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "briar.GROUP_ID"

    .line 115
    iget-object v1, p0, Lorg/briarproject/briar/android/forum/ForumActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v0, 0x4

    .line 116
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/forum/ForumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 125
    :pswitch_2
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/ForumActivity;->showUnsubscribeDialog()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090022
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
