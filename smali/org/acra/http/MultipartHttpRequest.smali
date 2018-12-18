.class public Lorg/acra/http/MultipartHttpRequest;
.super Lorg/acra/http/BaseHttpRequest;
.source "MultipartHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/acra/http/BaseHttpRequest<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/net/Uri;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "%&ACRA_REPORT_DIVIDER&%"

.field private static final BOUNDARY_FIX:Ljava/lang/String; = "--"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"


# instance fields
.field private final context:Landroid/content/Context;

.field private final type:Lorg/acra/sender/HttpSender$Type;


# direct methods
.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    .line 56
    sget-object v3, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/acra/http/BaseHttpRequest;-><init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    move-object v0, p2

    .line 57
    iput-object v0, v9, Lorg/acra/http/MultipartHttpRequest;->context:Landroid/content/Context;

    move-object v0, p3

    .line 58
    iput-object v0, v9, Lorg/acra/http/MultipartHttpRequest;->type:Lorg/acra/sender/HttpSender$Type;

    return-void
.end method


# virtual methods
.method protected asBytes(Landroid/util/Pair;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "\r\n"

    .line 71
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "%&ACRA_REPORT_DIVIDER&%"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v2, "Content-Type: "

    .line 72
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/http/MultipartHttpRequest;->type:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Type;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 73
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 74
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "\r\n"

    .line 75
    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "%&ACRA_REPORT_DIVIDER&%"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v3, "Content-Disposition: attachment; filename=\""

    .line 76
    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/http/MultipartHttpRequest;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lorg/acra/http/HttpUtils;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v3, "Content-Type: "

    .line 77
    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/http/MultipartHttpRequest;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lorg/acra/http/HttpUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 78
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 79
    iget-object v3, p0, Lorg/acra/http/MultipartHttpRequest;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lorg/acra/http/HttpUtils;->uriToByteArray(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const-string p1, "\r\n"

    .line 81
    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const-string v2, "--"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const-string v2, "%&ACRA_REPORT_DIVIDER&%"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const-string v2, "--"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 82
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw p1
.end method

.method protected bridge synthetic asBytes(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/acra/http/MultipartHttpRequest;->asBytes(Landroid/util/Pair;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getContentType(Landroid/content/Context;Landroid/util/Pair;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "multipart/mixed; boundary=%&ACRA_REPORT_DIVIDER&%"

    return-object p1
.end method

.method protected bridge synthetic getContentType(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 43
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lorg/acra/http/MultipartHttpRequest;->getContentType(Landroid/content/Context;Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
