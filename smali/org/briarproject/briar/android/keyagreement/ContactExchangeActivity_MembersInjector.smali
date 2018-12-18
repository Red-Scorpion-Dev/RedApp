.class public final Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ContactExchangeActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;",
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

.field private final contactExchangeTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactExchangeTask;",
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

.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactExchangeTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->contactExchangeTaskProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p7, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->identityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactExchangeTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v8, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static injectContactExchangeTask(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/contact/ContactExchangeTask;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->contactExchangeTask:Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    return-void
.end method

.method public static injectIdentityManager(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/IdentityManager;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 73
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 76
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 77
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 79
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->contactExchangeTaskProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->injectContactExchangeTask(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/contact/ContactExchangeTask;)V

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->identityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->injectIdentityManager(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-void
.end method
