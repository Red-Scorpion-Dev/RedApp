.class Lorg/briarproject/bramble/data/BdfReaderFactoryImpl;
.super Ljava/lang/Object;
.source "BdfReaderFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/data/BdfReaderFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/data/BdfReader;
    .locals 3

    .line 20
    new-instance v0, Lorg/briarproject/bramble/data/BdfReaderImpl;

    const/4 v1, 0x5

    const/high16 v2, 0x10000

    invoke-direct {v0, p1, v1, v2}, Lorg/briarproject/bramble/data/BdfReaderImpl;-><init>(Ljava/io/InputStream;II)V

    return-object v0
.end method

.method public createReader(Ljava/io/InputStream;II)Lorg/briarproject/bramble/api/data/BdfReader;
    .locals 1

    .line 27
    new-instance v0, Lorg/briarproject/bramble/data/BdfReaderImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/briarproject/bramble/data/BdfReaderImpl;-><init>(Ljava/io/InputStream;II)V

    return-object v0
.end method
