.class final Lorg/h2/util/SourceCompiler$2;
.super Lorg/h2/util/Task;
.source "SourceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/SourceCompiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lorg/h2/util/SourceCompiler$2;->val$in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/h2/util/SourceCompiler$2;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Lorg/h2/util/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/h2/util/SourceCompiler$2;->val$in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/h2/util/SourceCompiler$2;->val$out:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
