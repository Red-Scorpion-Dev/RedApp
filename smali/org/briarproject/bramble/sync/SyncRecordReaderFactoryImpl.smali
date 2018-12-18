.class Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;
.super Ljava/lang/Object;
.source "SyncRecordReaderFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

.field private final recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordReaderFactory;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;->recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    return-void
.end method


# virtual methods
.method public createRecordReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/sync/SyncRecordReader;
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;->recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/record/RecordReaderFactory;->createRecordReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/record/RecordReader;

    move-result-object p1

    .line 32
    new-instance v0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-direct {v0, v1, p1}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;-><init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordReader;)V

    return-object v0
.end method
