.class public final Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;
.super Ljava/lang/Object;
.source "KeyAgreementFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
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

.field private final keyAgreementTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadParser;",
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->keyAgreementTaskProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->payloadEncoderProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->payloadParserProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->ioExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/PayloadParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v6, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static injectIoExecutor(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ioExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static injectKeyAgreementTaskProvider(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementTaskProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectPayloadEncoder(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    return-void
.end method

.method public static injectPayloadParser(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/PayloadParser;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->payloadParser:Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/fragment/BaseEventFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->keyAgreementTaskProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectKeyAgreementTaskProvider(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Ljavax/inject/Provider;)V

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->payloadEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectPayloadEncoder(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;)V

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->payloadParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectPayloadParser(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/PayloadParser;)V

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->ioExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectIoExecutor(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Ljava/util/concurrent/Executor;)V

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-void
.end method
