.class public final Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;
.super Ljava/lang/Object;
.source "BlogModule_ProvideBlogPostValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/blog/BlogPostValidator;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogFactory;",
            ">;"
        }
    .end annotation
.end field

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

.field private final groupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final messageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
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

.field private final module:Lorg/briarproject/briar/blog/BlogModule;

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
.method public constructor <init>(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogFactory;",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->module:Lorg/briarproject/briar/blog/BlogModule;

    .line 47
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->groupFactoryProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->messageFactoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->blogFactoryProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogFactory;",
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
            "Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;"
        }
    .end annotation

    .line 98
    new-instance v9, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;-><init>(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideInstance(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogPostValidator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogFactory;",
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
            "Lorg/briarproject/briar/blog/BlogPostValidator;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 81
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/briarproject/bramble/api/sync/GroupFactory;

    .line 82
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 83
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/briar/api/blog/BlogFactory;

    .line 84
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 85
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 86
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, p0

    .line 78
    invoke-static/range {v0 .. v7}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->proxyProvideBlogPostValidator(Lorg/briarproject/briar/blog/BlogModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/blog/BlogPostValidator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBlogPostValidator(Lorg/briarproject/briar/blog/BlogModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/blog/BlogPostValidator;
    .locals 0

    .line 119
    invoke-virtual/range {p0 .. p7}, Lorg/briarproject/briar/blog/BlogModule;->provideBlogPostValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/blog/BlogPostValidator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 118
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/blog/BlogPostValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->get()Lorg/briarproject/briar/blog/BlogPostValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/blog/BlogPostValidator;
    .locals 8

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->module:Lorg/briarproject/briar/blog/BlogModule;

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->groupFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->messageFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->blogFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->provideInstance(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogPostValidator;

    move-result-object v0

    return-object v0
.end method
