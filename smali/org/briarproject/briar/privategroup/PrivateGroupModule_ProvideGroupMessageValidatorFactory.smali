.class public final Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;
.super Ljava/lang/Object;
.source "PrivateGroupModule_ProvideGroupMessageValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/GroupMessageValidator;",
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

.field private final groupInvitationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;",
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

.field private final module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

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
.method public constructor <init>(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
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
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 43
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->groupInvitationFactoryProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
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
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;"
        }
    .end annotation

    .line 89
    new-instance v8, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;-><init>(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/GroupMessageValidator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
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
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/GroupMessageValidator;"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 74
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 75
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 76
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/bramble/api/system/Clock;

    .line 77
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    .line 78
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/briarproject/bramble/api/sync/ValidationManager;

    move-object v0, p0

    .line 71
    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->proxyProvideGroupMessageValidator(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupMessageValidator(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/GroupMessageValidator;
    .locals 0

    .line 108
    invoke-virtual/range {p0 .. p6}, Lorg/briarproject/briar/privategroup/PrivateGroupModule;->provideGroupMessageValidator(Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 107
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->get()Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/GroupMessageValidator;
    .locals 7

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->groupInvitationFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->provideInstance(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    move-result-object v0

    return-object v0
.end method
