.class public final Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;
.super Ljava/lang/Object;
.source "IntroductionModule_ProvideSessionEncoderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/introduction/SessionEncoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/introduction/IntroductionModule;

.field private final sessionEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoderImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoderImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->sessionEncoderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoderImpl;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;-><init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/SessionEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoderImpl;",
            ">;)",
            "Lorg/briarproject/briar/introduction/SessionEncoder;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->proxyProvideSessionEncoder(Lorg/briarproject/briar/introduction/IntroductionModule;Ljava/lang/Object;)Lorg/briarproject/briar/introduction/SessionEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSessionEncoder(Lorg/briarproject/briar/introduction/IntroductionModule;Ljava/lang/Object;)Lorg/briarproject/briar/introduction/SessionEncoder;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/briar/introduction/SessionEncoderImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule;->provideSessionEncoder(Lorg/briarproject/briar/introduction/SessionEncoderImpl;)Lorg/briarproject/briar/introduction/SessionEncoder;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/introduction/SessionEncoder;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->get()Lorg/briarproject/briar/introduction/SessionEncoder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/introduction/SessionEncoder;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->sessionEncoderProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/SessionEncoder;

    move-result-object v0

    return-object v0
.end method
