.class Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;
.super Ljava/lang/Object;
.source "SyncRecordWriterFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

.field private final recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 24
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    return-void
.end method


# virtual methods
.method public createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/record/RecordWriterFactory;->createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/record/RecordWriter;

    move-result-object p1

    .line 30
    new-instance v0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-direct {v0, v1, p1}, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;-><init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordWriter;)V

    return-object v0
.end method
