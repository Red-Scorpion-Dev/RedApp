.class public final Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;
.super Ljava/lang/Object;
.source "MetadataEncoderImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/data/MetadataEncoderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bdfWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
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
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;->bdfWriterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newMetadataEncoderImpl(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)Lorg/briarproject/bramble/data/MetadataEncoderImpl;
    .locals 1

    .line 35
    new-instance v0, Lorg/briarproject/bramble/data/MetadataEncoderImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/MetadataEncoderImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/MetadataEncoderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/BdfWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/data/MetadataEncoderImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/data/MetadataEncoderImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/data/MetadataEncoderImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;->get()Lorg/briarproject/bramble/data/MetadataEncoderImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/data/MetadataEncoderImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;->bdfWriterFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/data/MetadataEncoderImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/MetadataEncoderImpl;

    move-result-object v0

    return-object v0
.end method
