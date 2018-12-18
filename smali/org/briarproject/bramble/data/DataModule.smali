.class public Lorg/briarproject/bramble/data/DataModule;
.super Ljava/lang/Object;
.source "DataModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBdfReaderFactory()Lorg/briarproject/bramble/api/data/BdfReaderFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 16
    new-instance v0, Lorg/briarproject/bramble/data/BdfReaderFactoryImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/data/BdfReaderFactoryImpl;-><init>()V

    return-object v0
.end method

.method provideBdfWriterFactory()Lorg/briarproject/bramble/api/data/BdfWriterFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 21
    new-instance v0, Lorg/briarproject/bramble/data/BdfWriterFactoryImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/data/BdfWriterFactoryImpl;-><init>()V

    return-object v0
.end method

.method provideMetaDataEncoder(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)Lorg/briarproject/bramble/api/data/MetadataEncoder;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/data/MetadataEncoderImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/data/MetadataEncoderImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)V

    return-object v0
.end method

.method provideMetaDataParser(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/data/MetadataParser;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/data/MetadataParserImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/data/MetadataParserImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V

    return-object v0
.end method
