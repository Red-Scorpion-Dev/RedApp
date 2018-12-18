.class public final Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;
.super Ljava/lang/Object;
.source "GroupInvitationModule_ProvideProtocolEngineFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

.field private final protocolEngineFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->protocolEngineFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;-><init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->proxyProvideProtocolEngineFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideProtocolEngineFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;

    .line 46
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;->provideProtocolEngineFactory(Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->get()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->protocolEngineFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;

    move-result-object v0

    return-object v0
.end method
