.class public final Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;
.super Ljava/lang/Object;
.source "GroupInvitationModule_ProvideGroupInvitationValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

.field private final privateGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final validationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 42
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;"
        }
    .end annotation

    .line 88
    new-instance v8, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;-><init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 73
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 74
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/system/Clock;

    .line 75
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 76
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    .line 77
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/briarproject/bramble/api/sync/ValidationManager;

    move-object v0, p0

    .line 70
    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->proxyProvideGroupInvitationValidator(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupInvitationValidator(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;
    .locals 7

    .line 106
    move-object v5, p5

    check-cast v5, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 107
    invoke-virtual/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;->provideGroupInvitationValidator(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 106
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->get()Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;
    .locals 7

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    move-result-object v0

    return-object v0
.end method
