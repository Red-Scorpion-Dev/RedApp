.class public final Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;
.super Ljava/lang/Object;
.source "GroupInvitationModule_ProvideGroupInvitationFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupInvitationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->groupInvitationFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;-><init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->proxyProvideGroupInvitationFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupInvitationFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
    .locals 0

    .line 46
    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;

    .line 47
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;->provideGroupInvitationFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->get()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->groupInvitationFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    move-result-object v0

    return-object v0
.end method
