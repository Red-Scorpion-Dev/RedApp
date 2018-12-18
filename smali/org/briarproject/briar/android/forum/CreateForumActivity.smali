.class public Lorg/briarproject/briar/android/forum/CreateForumActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "CreateForumActivity.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private createForumButton:Landroid/widget/Button;

.field protected volatile forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

.field private nameEntry:Landroid/widget/EditText;

.field private nameEntryLayout:Landroid/support/design/widget/TextInputLayout;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/briarproject/briar/android/forum/CreateForumActivity;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->enableOrDisableCreateButton()V

    return-void
.end method

.method private createForum()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->validateName()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForumButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->storeForum(Ljava/lang/String;)V

    return-void
.end method

.method private displayForum(Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 1

    .line 144
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;-><init>(Lorg/briarproject/briar/android/forum/CreateForumActivity;Lorg/briarproject/briar/api/forum/Forum;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableOrDisableCreateButton()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForumButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForumButton:Landroid/widget/Button;

    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->validateName()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$displayForum$3(Lorg/briarproject/briar/android/forum/CreateForumActivity;Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 3

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "briar.GROUP_ID"

    .line 147
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "briar.GROUP_NAME"

    .line 148
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f1100a9

    const/4 v0, 0x1

    .line 150
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 152
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/forum/CreateForumActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    .line 81
    invoke-static {p2, p3}, Lorg/briarproject/briar/android/util/UiUtils;->enterPressed(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 82
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForum()V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onCreate$1(Lorg/briarproject/briar/android/forum/CreateForumActivity;Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForum()V

    return-void
.end method

.method public static synthetic lambda$storeForum$2(Lorg/briarproject/briar/android/forum/CreateForumActivity;Ljava/lang/String;)V
    .locals 4

    .line 132
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 133
    iget-object v2, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-interface {v2, p1}, Lorg/briarproject/briar/api/forum/ForumManager;->addForum(Ljava/lang/String;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    .line 134
    sget-object v2, Lorg/briarproject/briar/android/forum/CreateForumActivity;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Storing forum"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 135
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->displayForum(Lorg/briarproject/briar/api/forum/Forum;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    sget-object v0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->finishOnUiThread()V

    :goto_0
    return-void
.end method

.method private storeForum(Ljava/lang/String;)V
    .locals 1

    .line 130
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$QFl_JuB18hGlUpNeKq8BVKzOvhs;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$QFl_JuB18hGlUpNeKq8BVKzOvhs;-><init>(Lorg/briarproject/briar/android/forum/CreateForumActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateName()Z
    .locals 4

    .line 111
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 114
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntryLayout:Landroid/support/design/widget/TextInputLayout;

    const v2, 0x7f11011e

    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 117
    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntryLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 102
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 59
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->setContentView(I)V

    const p1, 0x7f09007c

    .line 61
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntryLayout:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f09007b

    .line 62
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    .line 63
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    new-instance v0, Lorg/briarproject/briar/android/forum/CreateForumActivity$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/forum/CreateForumActivity$1;-><init>(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$WSilCjXV9lh8i2CYL1I6NacxoLg;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$WSilCjXV9lh8i2CYL1I6NacxoLg;-><init>(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f09007a

    .line 88
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForumButton:Landroid/widget/Button;

    .line 89
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->createForumButton:Landroid/widget/Button;

    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$5ixPA0dP8v28BMum3dcKO5Gl8dU;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$5ixPA0dP8v28BMum3dcKO5Gl8dU;-><init>(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007d

    .line 91
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->progress:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 96
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/CreateForumActivity;->nameEntry:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->showSoftKeyboard(Landroid/view/View;)V

    return-void
.end method
