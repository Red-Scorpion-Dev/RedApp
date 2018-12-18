.class Lorg/briarproject/bramble/record/RecordReaderFactoryImpl;
.super Ljava/lang/Object;
.source "RecordReaderFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/record/RecordReaderFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRecordReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/record/RecordReader;
    .locals 1

    .line 12
    new-instance v0, Lorg/briarproject/bramble/record/RecordReaderImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/record/RecordReaderImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
