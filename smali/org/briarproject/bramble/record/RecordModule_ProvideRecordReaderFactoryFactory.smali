.class public final Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;
.super Ljava/lang/Object;
.source "RecordModule_ProvideRecordReaderFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/record/RecordModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/record/RecordModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->module:Lorg/briarproject/bramble/record/RecordModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;
    .locals 1

    .line 30
    new-instance v0, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;-><init>(Lorg/briarproject/bramble/record/RecordModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordReaderFactory;
    .locals 0

    .line 26
    invoke-static {p0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->proxyProvideRecordReaderFactory(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideRecordReaderFactory(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordReaderFactory;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/briarproject/bramble/record/RecordModule;->provideRecordReaderFactory()Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->get()Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/record/RecordReaderFactory;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->module:Lorg/briarproject/bramble/record/RecordModule;

    invoke-static {v0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->provideInstance(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    move-result-object v0

    return-object v0
.end method
