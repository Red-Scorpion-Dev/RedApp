.class public Lorg/briarproject/bramble/record/RecordModule;
.super Ljava/lang/Object;
.source "RecordModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideRecordReaderFactory()Lorg/briarproject/bramble/api/record/RecordReaderFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 14
    new-instance v0, Lorg/briarproject/bramble/record/RecordReaderFactoryImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/record/RecordReaderFactoryImpl;-><init>()V

    return-object v0
.end method

.method provideRecordWriterFactory()Lorg/briarproject/bramble/api/record/RecordWriterFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 19
    new-instance v0, Lorg/briarproject/bramble/record/RecordWriterFactoryImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/record/RecordWriterFactoryImpl;-><init>()V

    return-object v0
.end method
