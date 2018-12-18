.class public Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;
.super Lorg/briarproject/briar/android/threaded/ThreadListActivity;
.source "GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/threaded/ThreadListActivity<",
        "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field controller:Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

.field private dissolveMenuItem:Landroid/view/MenuItem;

.field private inviteMenuItem:Landroid/view/MenuItem;

.field private isCreator:Z

.field private isDissolved:Z

.field private leaveMenuItem:Landroid/view/MenuItem;

.field private revealMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->isDissolved:Z

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setGroupEnabled(Z)V

    return-void
.end method

.method static synthetic access$101(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V
    .locals 0

    .line 44
    invoke-super {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadItems()V

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->isCreator:Z

    return p0
.end method

.method static synthetic access$202(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->isCreator:Z

    return p1
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->showMenuItems()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Landroid/view/View;)V
    .locals 2

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 81
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setGroupEnabled(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 198
    iput-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->isDissolved:Z

    .line 199
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 200
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->isKeyboardOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->hideSoftKeyboard()V

    goto :goto_1

    .line 206
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private showDissolveGroupDialog()V
    .locals 3

    .line 236
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100c9

    .line 238
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1100c8

    .line 239
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1100c7

    .line 240
    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110062

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private showLeaveGroupDialog()V
    .locals 3

    .line 226
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100db

    .line 228
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1100da

    .line 229
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f11008c

    .line 230
    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110062

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private showMenuItems()V
    .locals 3

    .line 211
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->leaveMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->dissolveMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->isCreator:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->revealMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->inviteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 215
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->leaveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->dissolveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->revealMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 219
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->inviteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->leaveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->dissolveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/support/v7/widget/LinearLayoutManager;)Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;
    .locals 1

    .line 92
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;-><init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Landroid/support/v7/widget/LinearLayoutManager;)V

    return-object v0
.end method

.method protected bridge synthetic createAdapter(Landroid/support/v7/widget/LinearLayoutManager;)Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->createAdapter(Landroid/support/v7/widget/LinearLayoutManager;)Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected getController()Lorg/briarproject/briar/android/threaded/ThreadListController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/threaded/ThreadListController<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->controller:Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    return-object v0
.end method

.method protected getItemPostedString()I
    .locals 1

    const v0, 0x7f1100e3

    return v0
.end method

.method protected getMaxTextLength()I
    .locals 1

    const/16 v0, 0x7c00

    return v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 57
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V

    return-void
.end method

.method protected loadItems()V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->controller:Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController;->isDissolved(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p1, 0x7f1100ce

    .line 177
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->displaySnackbar(I)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 247
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->controller:Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    new-instance p2, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$3;

    invoke-direct {p2, p0, p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$3;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController;->deleteNamedGroup(Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method

.method public onContactRelationshipRevealed(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;

    invoke-virtual {v0, p1, p3}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->updateVisibility(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/api/privategroup/Visibility;)V

    .line 263
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/controller/SharingController;->add(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 264
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/SharingController;->getTotalCount()I

    move-result p1

    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    .line 265
    invoke-interface {p2}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result p2

    .line 264
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setToolbarSubTitle(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setUpCustomToolbar(Z)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "briar.GROUP_NAME"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->loadNamedGroup()V

    if-eqz v0, :cond_1

    .line 78
    new-instance v1, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupActivity$OoHlcmF1dihO2ayg-4uohFFsXuU;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupActivity$OoHlcmF1dihO2ayg-4uohFFsXuU;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setGroupEnabled(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090029

    .line 137
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->revealMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f090026

    .line 138
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->inviteMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f090027

    .line 139
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->leaveMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f090025

    .line 140
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->dissolveMenuItem:Landroid/view/MenuItem;

    .line 141
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->showMenuItems()V

    .line 143
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onGroupDissolved()V
    .locals 3

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setGroupEnabled(Z)V

    .line 271
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100cb

    .line 273
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1100ca

    .line 274
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110147

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method protected bridge synthetic onNamedGroupLoaded(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->onNamedGroupLoaded(Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V

    return-void
.end method

.method protected onNamedGroupLoaded(Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V
    .locals 2

    .line 114
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->controller:Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;

    invoke-direct {v1, p0, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Lorg/briarproject/briar/android/DestroyableContext;Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController;->loadLocalAuthor(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 156
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 150
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 151
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->showLeaveGroupDialog()V

    return v1

    .line 160
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 161
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 162
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    .line 168
    :pswitch_4
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->showDissolveGroupDialog()V

    .line 170
    :goto_0
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f090025
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onReplyClick(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->onReplyClick(Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V

    return-void
.end method

.method public onReplyClick(Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V
    .locals 1

    .line 194
    iget-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->isDissolved:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onReplyClick(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onReplyClick(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->onReplyClick(Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V

    return-void
.end method
