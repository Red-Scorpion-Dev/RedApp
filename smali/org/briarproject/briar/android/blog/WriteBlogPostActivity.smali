.class public Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "WriteBlogPostActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field volatile blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field volatile blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

.field private volatile groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field volatile identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private input:Lorg/briarproject/briar/android/view/TextInputView;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->enableOrDisablePublishButton()V

    return-void
.end method

.method private enableOrDisablePublishButton()V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/view/TextInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$postFailedToPublish$2(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$postPublished$1(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
    .locals 1

    const/4 v0, -0x1

    .line 164
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$storePost$0(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Ljava/lang/String;)V
    .locals 7

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v5

    .line 150
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v4, 0x0

    move-object v6, p1

    .line 151
    invoke-interface/range {v0 .. v6}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->createBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/blog/BlogPost;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->addLocalPost(Lorg/briarproject/briar/api/blog/BlogPost;)V

    .line 153
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->postPublished()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    sget-object v0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 157
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->postFailedToPublish()V

    :goto_0
    return-void
.end method

.method private postFailedToPublish()V
    .locals 1

    .line 170
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$6qxAw36jVNxji3pCovUiCAO6jik;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$6qxAw36jVNxji3pCovUiCAO6jik;-><init>(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postPublished()V
    .locals 1

    .line 163
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$98z7wcey0r-HsmvCzuXwqXn2-vI;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$98z7wcey0r-HsmvCzuXwqXn2-vI;-><init>(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private storePost(Ljava/lang/String;)V
    .locals 1

    .line 146
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;-><init>(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 121
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "briar.GROUP_ID"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const p1, 0x7f0c002f

    .line 71
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->setContentView(I)V

    const p1, 0x7f09018c

    .line 73
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/TextInputView;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    .line 74
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 75
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    new-instance v0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity$1;-><init>(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {p1, p0}, Lorg/briarproject/briar/android/view/TextInputView;->setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V

    const p1, 0x7f090130

    .line 93
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No Group in intent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 126
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 115
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSendClick(Ljava/lang/String;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/TextInputView;->hideSoftKeyboard()V

    .line 138
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->input:Lorg/briarproject/briar/android/view/TextInputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0x7c00

    .line 141
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->truncateUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->storePost(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 98
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 99
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->blockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 104
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->unblockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method
