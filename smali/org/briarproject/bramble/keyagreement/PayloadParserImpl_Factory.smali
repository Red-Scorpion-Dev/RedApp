.class public final Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;
.super Ljava/lang/Object;
.source "PayloadParserImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bdfReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newPayloadParserImpl(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;
    .locals 1

    .line 35
    new-instance v0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;->get()Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;

    move-result-object v0

    return-object v0
.end method
