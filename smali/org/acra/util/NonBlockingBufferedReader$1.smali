.class Lorg/acra/util/NonBlockingBufferedReader$1;
.super Ljava/lang/Object;
.source "NonBlockingBufferedReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/util/NonBlockingBufferedReader;-><init>(Ljava/io/BufferedReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/util/NonBlockingBufferedReader;

.field final synthetic val$bufferedReader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Lorg/acra/util/NonBlockingBufferedReader;Ljava/io/BufferedReader;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->this$0:Lorg/acra/util/NonBlockingBufferedReader;

    iput-object p2, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->val$bufferedReader:Ljava/io/BufferedReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 26
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->val$bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    iget-object v1, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->this$0:Lorg/acra/util/NonBlockingBufferedReader;

    invoke-static {v1}, Lorg/acra/util/NonBlockingBufferedReader;->access$000(Lorg/acra/util/NonBlockingBufferedReader;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->val$bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    :try_start_1
    iget-object v1, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->this$0:Lorg/acra/util/NonBlockingBufferedReader;

    invoke-static {v1, v0}, Lorg/acra/util/NonBlockingBufferedReader;->access$102(Lorg/acra/util/NonBlockingBufferedReader;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 36
    :goto_3
    iget-object v1, p0, Lorg/acra/util/NonBlockingBufferedReader$1;->val$bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v1}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0
.end method
