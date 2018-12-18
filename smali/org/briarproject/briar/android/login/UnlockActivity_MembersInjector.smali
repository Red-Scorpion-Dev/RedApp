.class public final Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;
.super Ljava/lang/Object;
.source "UnlockActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/login/UnlockActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final lockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/login/UnlockActivity;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectLockManager(Lorg/briarproject/briar/android/login/UnlockActivity;Lorg/briarproject/briar/api/android/LockManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/login/UnlockActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/login/UnlockActivity;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 34
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/login/UnlockActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    return-void
.end method
