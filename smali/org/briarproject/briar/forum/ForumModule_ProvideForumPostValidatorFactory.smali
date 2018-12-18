.class public final Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;
.super Ljava/lang/Object;
.source "ForumModule_ProvideForumPostValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/forum/ForumPostValidator;",
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

.field private final metadataEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/forum/ForumModule;

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
.method public constructor <init>(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->module:Lorg/briarproject/briar/forum/ForumModule;

    .line 35
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;"
        }
    .end annotation

    .line 71
    new-instance v6, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;-><init>(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumPostValidator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/forum/ForumPostValidator;"
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 60
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 61
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 62
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/briarproject/bramble/api/system/Clock;

    .line 57
    invoke-static {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->proxyProvideForumPostValidator(Lorg/briarproject/briar/forum/ForumModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/forum/ForumPostValidator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideForumPostValidator(Lorg/briarproject/briar/forum/ForumModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/forum/ForumPostValidator;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/forum/ForumModule;->provideForumPostValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/forum/ForumPostValidator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 85
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/forum/ForumPostValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->get()Lorg/briarproject/briar/forum/ForumPostValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/forum/ForumPostValidator;
    .locals 5

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->module:Lorg/briarproject/briar/forum/ForumModule;

    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->provideInstance(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumPostValidator;

    move-result-object v0

    return-object v0
.end method
