.class public final Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;
.super Ljava/lang/Object;
.source "DataModule_ProvideBdfReaderFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/data/BdfReaderFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/data/DataModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/data/DataModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->module:Lorg/briarproject/bramble/data/DataModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;-><init>(Lorg/briarproject/bramble/data/DataModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->proxyProvideBdfReaderFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBdfReaderFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/DataModule;->provideBdfReaderFactory()Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->get()Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/data/BdfReaderFactory;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->module:Lorg/briarproject/bramble/data/DataModule;

    invoke-static {v0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->provideInstance(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object v0

    return-object v0
.end method
