.class public final Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;
.super Ljava/lang/Object;
.source "KeyAgreementActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final briarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;"
        }
    .end annotation
.end field

.field private final dbControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v6, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 59
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-void
.end method
