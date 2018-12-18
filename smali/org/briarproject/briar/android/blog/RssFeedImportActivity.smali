.class public Lorg/briarproject/briar/android/blog/RssFeedImportActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "RssFeedImportActivity.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field volatile feedManager:Lorg/briarproject/briar/api/feed/FeedManager;

.field private importButton:Landroid/widget/Button;

.field ioExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private urlInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->enableOrDisableImportButton()V

    return-void
.end method

.method private enableOrDisableImportButton()V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->urlInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->validateAndNormaliseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private feedImported()V
    .locals 1

    .line 135
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$o50o94ZX_1zHbwpK--rHQfxhMtM;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$o50o94ZX_1zHbwpK--rHQfxhMtM;-><init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private importFailed()V
    .locals 1

    .line 139
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$__8psFHcNIGJI2oDP2ftGIxawB8;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$__8psFHcNIGJI2oDP2ftGIxawB8;-><init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private importFeed(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$vC87Zvz15WSezqCxf46p7OfDJ3o;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$vC87Zvz15WSezqCxf46p7OfDJ3o;-><init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$importFailed$3(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f11003f

    .line 148
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110062

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 150
    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$8KVvcrKztdjEJrVDNfiBf8e5Okw;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$8KVvcrKztdjEJrVDNfiBf8e5Okw;-><init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V

    const v2, 0x7f1101d1

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic lambda$importFeed$1(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;Ljava/lang/String;)V
    .locals 2

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->feedManager:Lorg/briarproject/briar/api/feed/FeedManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/feed/FeedManager;->addFeed(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->feedImported()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    sget-object v0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 129
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importFailed()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$2(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->publish()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->publish()V

    return-void
.end method

.method private publish()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->urlInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->validateAndNormaliseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importFeed(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private validateAndNormaliseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 104
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 106
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 94
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 56
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->setContentView(I)V

    const p1, 0x7f0901b6

    .line 58
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->urlInput:Landroid/widget/EditText;

    .line 59
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->urlInput:Landroid/widget/EditText;

    new-instance v0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity$1;-><init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900d1

    .line 76
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importButton:Landroid/widget/Button;

    .line 77
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->importButton:Landroid/widget/Button;

    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$yVm4jK9rIsYZTbUdGNkHldeZbPI;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedImportActivity$yVm4jK9rIsYZTbUdGNkHldeZbPI;-><init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090130

    .line 79
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
