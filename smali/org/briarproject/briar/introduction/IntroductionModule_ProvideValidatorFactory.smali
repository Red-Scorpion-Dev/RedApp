.class public final Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;
.super Ljava/lang/Object;
.source "IntroductionModule_ProvideValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/introduction/IntroductionValidator;",
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
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
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

.field private final module:Lorg/briarproject/briar/introduction/IntroductionModule;

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
.method public constructor <init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    .line 38
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;"
        }
    .end annotation

    .line 79
    new-instance v7, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;-><init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionValidator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionValidator;"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 66
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 68
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 69
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, p0

    .line 63
    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->proxyProvideValidator(Lorg/briarproject/briar/introduction/IntroductionModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Ljava/lang/Object;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/introduction/IntroductionValidator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideValidator(Lorg/briarproject/briar/introduction/IntroductionModule;Lorg/briarproject/bramble/api/sync/ValidationManager;Ljava/lang/Object;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/introduction/IntroductionValidator;
    .locals 6

    .line 95
    move-object v2, p2

    check-cast v2, Lorg/briarproject/briar/introduction/MessageEncoder;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 96
    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroductionModule;->provideValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/introduction/IntroductionValidator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 95
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/introduction/IntroductionValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->get()Lorg/briarproject/briar/introduction/IntroductionValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/introduction/IntroductionValidator;
    .locals 6

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionValidator;

    move-result-object v0

    return-object v0
.end method
