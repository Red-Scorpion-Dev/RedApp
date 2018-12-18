.class public final Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;
.super Ljava/lang/Object;
.source "MessagingModule_ProvidePrivateMessageFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/messaging/MessagingModule;

.field private final privateMessageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/messaging/MessagingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->module:Lorg/briarproject/briar/messaging/MessagingModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->privateMessageFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/messaging/MessagingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;-><init>(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/messaging/MessagingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->proxyProvidePrivateMessageFactory(Lorg/briarproject/briar/messaging/MessagingModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePrivateMessageFactory(Lorg/briarproject/briar/messaging/MessagingModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
    .locals 0

    .line 43
    check-cast p1, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule;->providePrivateMessageFactory(Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->get()Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->module:Lorg/briarproject/briar/messaging/MessagingModule;

    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->privateMessageFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->provideInstance(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-result-object v0

    return-object v0
.end method
