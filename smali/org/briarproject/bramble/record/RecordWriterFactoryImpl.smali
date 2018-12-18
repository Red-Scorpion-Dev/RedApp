.class Lorg/briarproject/bramble/record/RecordWriterFactoryImpl;
.super Ljava/lang/Object;
.source "RecordWriterFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/record/RecordWriterFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/record/RecordWriter;
    .locals 1

    .line 12
    new-instance v0, Lorg/briarproject/bramble/record/RecordWriterImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/record/RecordWriterImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
