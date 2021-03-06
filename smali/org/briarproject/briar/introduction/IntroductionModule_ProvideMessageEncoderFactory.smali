.class public final Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;
.super Ljava/lang/Object;
.source "IntroductionModule_ProvideMessageEncoderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/introduction/MessageEncoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/introduction/IntroductionModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoderImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoderImpl;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;-><init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoderImpl;",
            ">;)",
            "Lorg/briarproject/briar/introduction/MessageEncoder;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->proxyProvideMessageEncoder(Lorg/briarproject/briar/introduction/IntroductionModule;Ljava/lang/Object;)Lorg/briarproject/briar/introduction/MessageEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMessageEncoder(Lorg/briarproject/briar/introduction/IntroductionModule;Ljava/lang/Object;)Lorg/briarproject/briar/introduction/MessageEncoder;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/briar/introduction/MessageEncoderImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule;->provideMessageEncoder(Lorg/briarproject/briar/introduction/MessageEncoderImpl;)Lorg/briarproject/briar/introduction/MessageEncoder;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/introduction/MessageEncoder;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->get()Lorg/briarproject/briar/introduction/MessageEncoder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/introduction/MessageEncoder;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->messageEncoderProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageEncoder;

    move-result-object v0

    return-object v0
.end method
