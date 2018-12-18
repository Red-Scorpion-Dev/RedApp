.class Lorg/h2/server/web/WebThread;
.super Lorg/h2/server/web/WebApp;
.source "WebThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ifModifiedSince:Ljava/lang/String;

.field private input:Ljava/io/InputStream;

.field protected output:Ljava/io/OutputStream;

.field protected final socket:Ljava/net/Socket;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/net/Socket;Lorg/h2/server/web/WebServer;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Lorg/h2/server/web/WebApp;-><init>(Lorg/h2/server/web/WebServer;)V

    .line 41
    iput-object p1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    .line 42
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "H2 Console thread"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/h2/server/web/WebThread;->thread:Ljava/lang/Thread;

    return-void
.end method

.method private allow()Z
    .locals 2

    .line 340
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/h2/util/NetUtils;->isLocalAddress(Ljava/net/Socket;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 346
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getAllowedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->allow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "notAllowed.jsp"

    return-object p1

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "index.do"

    return-object p1

    :cond_1
    return-object p1
.end method

.method private static getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAttributes(Ljava/lang/String;)V
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0x3d

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x26

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 234
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 239
    :goto_1
    invoke-static {p1}, Lorg/h2/util/StringUtils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->attributes:Ljava/util/Properties;

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Lorg/h2/server/web/WebThread;->attributes:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private parseHeader()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "parseHeader"

    .line 250
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 255
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->readHeaderLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 259
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 260
    invoke-static {v5}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "if-modified-since"

    .line 261
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v7, "connection"

    .line 263
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 264
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "keep-alive"

    .line 265
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v7, "content-type"

    .line 268
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 269
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "multipart/form-data"

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string v7, "content-length"

    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 274
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v7, "user-agent"

    .line 276
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v5, "webkit/"

    .line 277
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    if-eqz v5, :cond_0

    .line 281
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    const-string v6, "frame-border"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    const-string v6, "frameset-border"

    const-string v7, "2"

    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v7, "accept-language"

    .line 284
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 285
    iget-object v6, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    if-nez v6, :cond_7

    move-object v6, v0

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    iget-object v6, v6, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    :goto_1
    if-nez v6, :cond_0

    .line 287
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ",;"

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_8
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v7, "q="

    .line 291
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 292
    iget-object v7, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v7, v5}, Lorg/h2/server/web/WebServer;->supportsLanguage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v6, 0x2d

    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_9

    .line 295
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 297
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :cond_9
    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_2
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/server/web/WebThread;->headerLanguage:Ljava/lang/String;

    .line 302
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    if-eqz v5, :cond_0

    .line 303
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    iput-object v6, v5, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    .line 304
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    const-string v6, "language"

    iget-object v7, p0, Lorg/h2/server/web/WebThread;->headerLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    iget-object v6, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    iget-object v7, p0, Lorg/h2/server/web/WebThread;->headerLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebServer;->readTranslations(Lorg/h2/server/web/WebSession;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    :goto_3
    if-eqz v2, :cond_b

    goto :goto_5

    .line 318
    :cond_b
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    if-eqz v0, :cond_d

    if-lez v4, :cond_d

    .line 319
    invoke-static {v4}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    :goto_4
    if-ge v1, v4, :cond_c

    .line 321
    iget-object v2, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    sub-int v5, v4, v1

    invoke-virtual {v2, v0, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    .line 323
    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 324
    invoke-direct {p0, v1}, Lorg/h2/server/web/WebThread;->parseAttributes(Ljava/lang/String;)V

    :cond_d
    :goto_5
    return v3
.end method

.method private process()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "POST "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_0
    const/16 v1, 0x2f

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v1, :cond_2

    if-ge v3, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v4

    .line 117
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, ""

    .line 119
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v1}, Lorg/h2/server/web/WebThread;->getAllowedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lorg/h2/server/web/WebThread;->attributes:Ljava/util/Properties;

    const-string v1, "?"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    .line 123
    iput-object v3, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    if-ltz v1, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-direct {p0, v5}, Lorg/h2/server/web/WebThread;->parseAttributes(Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lorg/h2/server/web/WebThread;->attributes:Ljava/util/Properties;

    const-string v6, "jsessionid"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v5}, Lorg/h2/server/web/WebServer;->getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    .line 131
    :cond_3
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->parseHeader()Z

    move-result v2

    .line 132
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v0, v1}, Lorg/h2/server/web/WebThread;->processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    return v4

    .line 140
    :cond_4
    iget-boolean v1, p0, Lorg/h2/server/web/WebThread;->cache:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v4}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "HTTP/1.1 304 Not Modified\r\n"

    goto/16 :goto_5

    .line 145
    :cond_5
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "HTTP/1.1 404 Not Found\r\n"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 151
    :cond_6
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    if-eqz v3, :cond_a

    const-string v3, ".jsp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    new-instance v0, Ljava/lang/String;

    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 153
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CONSOLE_STREAM:Z

    if-eqz v1, :cond_9

    .line 154
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, v1, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    const-string v3, "chunks"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    if-eqz v1, :cond_9

    const-string v0, "HTTP/1.1 200 OK\r\n"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Content-Type: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Cache-Control: no-cache\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 163
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    iget-object v3, v3, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-static {v0, v3}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 166
    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 167
    array-length v3, v0

    if-nez v3, :cond_7

    goto :goto_2

    .line 170
    :cond_7
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 171
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 172
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 173
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 174
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 176
    :cond_8
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 177
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return v2

    .line 181
    :cond_9
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, v1, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :cond_a
    move-object v3, v1

    :goto_3
    const-string v0, "HTTP/1.1 200 OK\r\n"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Content-Type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-boolean v1, p0, Lorg/h2/server/web/WebThread;->cache:Z

    if-nez v1, :cond_b

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Cache-Control: no-cache\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 189
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Cache-Control: max-age=10\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Last-Modified: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Content-Length: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz v3, :cond_c

    .line 199
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 201
    :cond_c
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_d
    return v2
.end method

.method private readHeaderLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne v1, v2, :cond_2

    .line 213
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    if-ne v1, v4, :cond_4

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3

    :cond_4
    int-to-char v1, v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected adminShutdown()Ljava/lang/String;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/h2/server/web/WebThread;->stopNow()V

    .line 336
    invoke-super {p0}, Lorg/h2/server/web/WebApp;->adminShutdown()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method join(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->thread:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 86
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    .line 87
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    .line 88
    :cond_0
    iget-boolean v0, p0, Lorg/h2/server/web/WebThread;->stop:Z

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->process()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 96
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 97
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 99
    :try_start_1
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, p0}, Lorg/h2/server/web/WebServer;->remove(Lorg/h2/server/web/WebThread;)V

    throw v0

    :catch_1
    :goto_1
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/web/WebServer;->remove(Lorg/h2/server/web/WebThread;)V

    return-void
.end method

.method start()V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method stopNow()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lorg/h2/server/web/WebThread;->stop:Z

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
