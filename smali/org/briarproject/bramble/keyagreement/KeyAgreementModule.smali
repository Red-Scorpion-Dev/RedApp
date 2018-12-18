.class public Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;
.super Ljava/lang/Object;
.source "KeyAgreementModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideConnectionChooser(Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideKeyAgreementTask(Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method providePayloadEncoder(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/bramble/keyagreement/PayloadEncoderImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/keyagreement/PayloadEncoderImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)V

    return-object v0
.end method

.method providePayloadParser(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/keyagreement/PayloadParser;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;-><init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V

    return-object v0
.end method
