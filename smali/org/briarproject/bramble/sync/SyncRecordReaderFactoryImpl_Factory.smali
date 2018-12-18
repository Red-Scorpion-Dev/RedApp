.class public final Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "SyncRecordReaderFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final messageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final recordReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newSyncRecordReaderFactoryImpl(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordReaderFactory;)Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;
    .locals 1

    .line 47
    new-instance v0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;-><init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordReaderFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/record/RecordReaderFactory;",
            ">;)",
            "Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;

    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;-><init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordReaderFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->get()Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;

    move-result-object v0

    return-object v0
.end method
