.class public Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "CreateGroupFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.privategroup.creation.CreateGroupFragment"


# instance fields
.field private createGroupButton:Landroid/widget/Button;

.field private listener:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;

.field private nameEntry:Landroid/widget/EditText;

.field private nameLayout:Landroid/support/design/widget/TextInputLayout;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->enableOrDisableCreateButton()V

    return-void
.end method

.method private createGroup()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->validateName()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->listener:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;->hideSoftKeyboard(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroupButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->listener:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;->onGroupNameChosen(Ljava/lang/String;)V

    return-void
.end method

.method private enableOrDisableCreateButton()V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroupButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroupButton:Landroid/widget/Button;

    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->validateName()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    .line 67
    invoke-static {p2, p3}, Lorg/briarproject/briar/android/util/UiUtils;->enterPressed(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroup()V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onCreateView$1(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroup()V

    return-void
.end method

.method private validateName()Z
    .locals 4

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameLayout:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f11011e

    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 112
    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 92
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 39
    check-cast p1, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->listener:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004b

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900fc

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    .line 49
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    new-instance p3, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment$1;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment$1;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    new-instance p3, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupFragment$8b5MLmiYfAOI34X4ehYJZgWkHsU;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupFragment$8b5MLmiYfAOI34X4ehYJZgWkHsU;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p2, 0x7f0900ff

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameLayout:Landroid/support/design/widget/TextInputLayout;

    const p2, 0x7f090057

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroupButton:Landroid/widget/Button;

    .line 77
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->createGroupButton:Landroid/widget/Button;

    new-instance p3, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupFragment$fq_jVE7x-3tougENAClDtlvJUk8;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupFragment$fq_jVE7x-3tougENAClDtlvJUk8;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090130

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->progress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 86
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->listener:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;->nameEntry:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupListener;->showSoftKeyboard(Landroid/view/View;)V

    return-void
.end method
