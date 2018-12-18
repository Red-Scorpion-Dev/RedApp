.class public Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "CreateGroupActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->openNewGroup(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method private openNewGroup(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "briar.GROUP_ID"

    .line 61
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->finish()V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 29
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0021

    .line 36
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;

    invoke-direct {p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;-><init>()V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public onGroupNameChosen(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, p1, v1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;->createGroup(Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
