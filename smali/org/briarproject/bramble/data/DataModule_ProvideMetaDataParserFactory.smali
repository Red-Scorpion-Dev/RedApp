.class public final Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;
.super Ljava/lang/Object;
.source "DataModule_ProvideMetaDataParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/data/MetadataParser;",
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

.field private final module:Lorg/briarproject/bramble/data/DataModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/data/DataModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->module:Lorg/briarproject/bramble/data/DataModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/data/DataModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;-><init>(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/data/MetadataParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/data/DataModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/api/data/MetadataParser;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->proxyProvideMetaDataParser(Lorg/briarproject/bramble/data/DataModule;Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/data/MetadataParser;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMetaDataParser(Lorg/briarproject/bramble/data/DataModule;Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/data/MetadataParser;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/DataModule;->provideMetaDataParser(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/data/MetadataParser;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/data/MetadataParser;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->get()Lorg/briarproject/bramble/api/data/MetadataParser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/data/MetadataParser;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->module:Lorg/briarproject/bramble/data/DataModule;

    iget-object v1, p0, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->bdfReaderFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->provideInstance(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/data/MetadataParser;

    move-result-object v0

    return-object v0
.end method
