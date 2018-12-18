.class public final Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;
.super Ljava/lang/Object;
.source "DataModule_ProvideBdfWriterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
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
    iput-object p1, p0, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->module:Lorg/briarproject/bramble/data/DataModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;-><init>(Lorg/briarproject/bramble/data/DataModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->proxyProvideBdfWriterFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBdfWriterFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/DataModule;->provideBdfWriterFactory()Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->get()Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/data/BdfWriterFactory;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->module:Lorg/briarproject/bramble/data/DataModule;

    invoke-static {v0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->provideInstance(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object v0

    return-object v0
.end method
