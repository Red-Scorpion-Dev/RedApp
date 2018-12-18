.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideForumSharingValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/ForumSharingValidator;",
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

.field private final forumFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
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

.field private final module:Lorg/briarproject/briar/sharing/SharingModule;

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
.method public constructor <init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
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
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 42
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->forumFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
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
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;"
        }
    .end annotation

    .line 88
    new-instance v8, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
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
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/ForumSharingValidator;"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 73
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    .line 74
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 75
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 76
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/bramble/api/system/Clock;

    .line 77
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/briarproject/briar/api/forum/ForumFactory;

    move-object v0, p0

    .line 70
    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->proxyProvideForumSharingValidator(Lorg/briarproject/briar/sharing/SharingModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Ljava/lang/Object;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideForumSharingValidator(Lorg/briarproject/briar/sharing/SharingModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Ljava/lang/Object;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 7

    .line 106
    move-object v2, p2

    check-cast v2, Lorg/briarproject/briar/sharing/MessageEncoder;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 107
    invoke-virtual/range {v0 .. v6}, Lorg/briarproject/briar/sharing/SharingModule;->provideForumSharingValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 106
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/sharing/ForumSharingValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->get()Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 7

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->forumFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-result-object v0

    return-object v0
.end method
