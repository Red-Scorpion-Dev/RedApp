.class public final Lorg/acra/file/CrashReportPersister;
.super Ljava/lang/Object;
.source "CrashReportPersister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/File;)Lorg/acra/collector/CrashReportData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x2000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 59
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {v0}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/acra/util/JsonUtils;->toCrashReportData(Lorg/json/JSONObject;)Lorg/acra/collector/CrashReportData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw p1
.end method

.method public store(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/acra/util/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
