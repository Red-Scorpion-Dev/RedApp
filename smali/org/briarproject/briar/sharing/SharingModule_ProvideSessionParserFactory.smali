.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideSessionParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/SessionParser;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/sharing/SharingModule;

.field private final sessionParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParserImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParserImpl;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->sessionParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SessionParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SessionParser;"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->proxyProvideSessionParser(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/SessionParser;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSessionParser(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/SessionParser;
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/sharing/SessionParserImpl;

    .line 41
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule;->provideSessionParser(Lorg/briarproject/briar/sharing/SessionParserImpl;)Lorg/briarproject/briar/sharing/SessionParser;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/sharing/SessionParser;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->get()Lorg/briarproject/briar/sharing/SessionParser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/SessionParser;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->sessionParserProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SessionParser;

    move-result-object v0

    return-object v0
.end method
