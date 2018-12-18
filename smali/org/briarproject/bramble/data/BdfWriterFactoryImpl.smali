.class Lorg/briarproject/bramble/data/BdfWriterFactoryImpl;
.super Ljava/lang/Object;
.source "BdfWriterFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/data/BdfWriterFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/data/BdfWriter;
    .locals 1

    .line 17
    new-instance v0, Lorg/briarproject/bramble/data/BdfWriterImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
