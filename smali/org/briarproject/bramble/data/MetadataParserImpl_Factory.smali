.class public final Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;
.super Ljava/lang/Object;
.source "MetadataParserImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/data/MetadataParserImpl;",
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
    iput-object p1, p0, Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newMetadataParserImpl(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/data/MetadataParserImpl;
    .locals 1

    .line 35
    new-instance v0, Lorg/briarproject/bramble/data/MetadataParserImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/MetadataParserImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/MetadataParserImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/data/MetadataParserImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/data/MetadataParserImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/MetadataParserImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;->get()Lorg/briarproject/bramble/data/MetadataParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/data/MetadataParserImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/data/MetadataParserImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/MetadataParserImpl;

    move-result-object v0

    return-object v0
.end method
