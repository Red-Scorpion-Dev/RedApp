.class public Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;
.source "RevealContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field controller:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->showOnboardingDialog()V

    return-void
.end method

.method static synthetic lambda$showOnboardingDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic lambda$showOnboardingDialog$1(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->onboardingShown()V

    return-void
.end method

.method private onboardingShown()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->controller:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$2;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$2;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;->onboardingShown(Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method

.method private showOnboardingDialog()V
    .locals 3

    .line 109
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200dd

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100e6

    .line 110
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsActivity$UUidOcirNyYg21zonRggMEiBltk;->INSTANCE:Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsActivity$UUidOcirNyYg21zonRggMEiBltk;

    const v2, 0x7f1100bf

    .line 111
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsActivity$wyNhW999MC-ebEFPOoow68N1348;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsActivity$wyNhW999MC-ebEFPOoow68N1348;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public contactsSelected(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contactsSelected(Ljava/util/Collection;)V

    .line 130
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->button:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0c0027

    return v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 42
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 135
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->controller:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->contacts:Ljava/util/Collection;

    new-instance v2, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$3;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$3;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {p1, v0, v1, v2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;->reveal(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    .line 142
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const v0, 0x7f090140

    .line 55
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->button:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09002a

    if-eq v0, v1, :cond_0

    .line 104
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 101
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->showOnboardingDialog()V

    return v2

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->onBackPressed()V

    return v2
.end method

.method public onStart()V
    .locals 2

    .line 72
    invoke-super {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->controller:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;->isOnboardingNeeded(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
