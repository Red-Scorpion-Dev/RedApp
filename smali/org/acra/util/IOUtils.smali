.class public final Lorg/acra/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_FILTER:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_LIMIT:I = -0x1

.field private static final READ_TIMEOUT:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/acra/util/IOUtils$1;

    invoke-direct {v0}, Lorg/acra/util/IOUtils$1;-><init>()V

    sput-object v0, Lorg/acra/util/IOUtils;->DEFAULT_FILTER:Lcom/android/internal/util/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteReport(Ljava/io/File;)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete error report : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/acra/util/IOUtils;->DEFAULT_FILTER:Lcom/android/internal/util/Predicate;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static streamToString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/acra/util/IOUtils;->DEFAULT_FILTER:Lcom/android/internal/util/Predicate;

    invoke-static {p0, v0, p1}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/internal/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 97
    invoke-static {p0, p1, v0}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static streamToString(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/internal/util/Predicate<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    .line 127
    :try_start_0
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/acra/collections/BoundedLinkedList;

    invoke-direct {p0, p2}, Lorg/acra/collections/BoundedLinkedList;-><init>(I)V

    .line 128
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 129
    invoke-interface {p1, p2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "\n"

    .line 133
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    return-object p0

    :goto_1
    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static streamToStringNonBlockingRead(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/internal/util/Predicate<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 152
    new-instance p0, Lorg/acra/util/NonBlockingBufferedReader;

    invoke-direct {p0, v0}, Lorg/acra/util/NonBlockingBufferedReader;-><init>(Ljava/io/BufferedReader;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 154
    :try_start_0
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance v0, Lorg/acra/collections/BoundedLinkedList;

    invoke-direct {v0, p2}, Lorg/acra/collections/BoundedLinkedList;-><init>(I)V

    move-object p2, v0

    .line 155
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    .line 157
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    .line 158
    invoke-virtual {p0}, Lorg/acra/util/NonBlockingBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 162
    :cond_2
    invoke-interface {p1, v2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 167
    :try_start_2
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interrupted while reading stream"

    invoke-interface {v0, v1, v2, p1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    const-string p1, "\n"

    .line 169
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-virtual {p0}, Lorg/acra/util/NonBlockingBufferedReader;->close()V

    return-object p1

    :goto_3
    invoke-virtual {p0}, Lorg/acra/util/NonBlockingBufferedReader;->close()V

    throw p1
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method
