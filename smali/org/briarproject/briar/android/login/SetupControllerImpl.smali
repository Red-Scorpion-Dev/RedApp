.class public Lorg/briarproject/briar/android/login/SetupControllerImpl;
.super Lorg/briarproject/briar/android/login/PasswordControllerImpl;
.source "SetupControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/login/SetupController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private volatile setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lorg/briarproject/briar/android/login/SetupControllerImpl;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;)V
    .locals 0
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/PasswordControllerImpl;-><init>(Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;)V

    return-void
.end method

.method public static synthetic lambda$createAccount$0(Lorg/briarproject/briar/android/login/SetupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 100
    sget-object v0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Creating account"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0, p2, p3}, Lorg/briarproject/bramble/api/account/AccountManager;->createAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createAccount()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    .line 78
    new-instance v1, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;

    invoke-direct {v1, p0, v0, v0}, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;-><init>(Lorg/briarproject/briar/android/login/SetupControllerImpl;Lorg/briarproject/briar/android/DestroyableContext;Lorg/briarproject/briar/android/login/SetupActivity;)V

    .line 88
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/SetupControllerImpl;->createAccount(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method

.method createAccount(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Lorg/briarproject/briar/android/login/SetupActivity;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lorg/briarproject/briar/android/login/SetupActivity;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/briar/android/login/-$$Lambda$SetupControllerImpl$u65UGqVCiIKOcwdlXIj7schCrSA;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/briarproject/briar/android/login/-$$Lambda$SetupControllerImpl$u65UGqVCiIKOcwdlXIj7schCrSA;-><init>(Lorg/briarproject/briar/android/login/SetupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public needToShowDozeFragment()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz v0, :cond_2

    .line 43
    invoke-static {v0}, Lorg/briarproject/briar/android/login/DozeView;->needsToBeShown(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    invoke-static {v0}, Lorg/briarproject/briar/android/login/HuaweiView;->needsToBeShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/login/SetupActivity;->setAuthorName(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/login/SetupActivity;->setPassword(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setSetupActivity(Lorg/briarproject/briar/android/login/SetupActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    return-void
.end method

.method public showDozeFragment()V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lorg/briarproject/briar/android/login/SetupActivity;->showDozeFragment()V

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public showPasswordFragment()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl;->setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lorg/briarproject/briar/android/login/SetupActivity;->showPasswordFragment()V

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
