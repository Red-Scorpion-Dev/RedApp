.class public Lorg/briarproject/briar/android/login/PasswordControllerImpl;
.super Ljava/lang/Object;
.source "PasswordControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/login/PasswordController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field protected final ioExecutor:Ljava/util/concurrent/Executor;

.field private final strengthEstimator:Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;)V
    .locals 0
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 26
    iput-object p3, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->strengthEstimator:Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    return-void
.end method

.method public static synthetic lambda$changePassword$1(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    .line 46
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/account/AccountManager;->changePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$validatePassword$0(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/account/AccountManager;->signIn(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;-><init>(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public estimatePasswordStrength(Ljava/lang/String;)F
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->strengthEstimator:Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;->estimateStrength(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public validatePassword(Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;-><init>(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
