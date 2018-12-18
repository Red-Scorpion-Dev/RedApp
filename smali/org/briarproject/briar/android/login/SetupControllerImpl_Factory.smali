.class public final Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;
.super Ljava/lang/Object;
.source "SetupControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/login/SetupControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final strengthEstimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->accountManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->strengthEstimatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;",
            ">;)",
            "Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newSetupControllerImpl(Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;)Lorg/briarproject/briar/android/login/SetupControllerImpl;
    .locals 1

    .line 55
    new-instance v0, Lorg/briarproject/briar/android/login/SetupControllerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupControllerImpl;-><init>(Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/SetupControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;",
            ">;)",
            "Lorg/briarproject/briar/android/login/SetupControllerImpl;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/login/SetupControllerImpl;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupControllerImpl;-><init>(Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->get()Lorg/briarproject/briar/android/login/SetupControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/login/SetupControllerImpl;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->accountManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->strengthEstimatorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/SetupControllerImpl;

    move-result-object v0

    return-object v0
.end method
