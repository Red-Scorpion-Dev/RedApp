.class public Lorg/h2/server/web/WebServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "WebServlet.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient server:Lorg/h2/server/web/WebServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private allow(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method private getAllowedFile(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/h2/server/web/WebServlet;->allow(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "notAllowed.jsp"

    return-object p1

    .line 81
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "index.do"

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->stop()V

    return-void
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 90
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    .line 91
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "/"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/h2/server/web/WebServlet;->getAllowedFile(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 102
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 103
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 109
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const-string v3, "jsessionid"

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 118
    iget-object v2, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v3}, Lorg/h2/server/web/WebServer;->getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object v2

    .line 120
    :cond_4
    new-instance v3, Lorg/h2/server/web/WebApp;

    iget-object v4, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-direct {v3, v4}, Lorg/h2/server/web/WebApp;-><init>(Lorg/h2/server/web/WebServer;)V

    .line 121
    invoke-virtual {v3, v2, v1}, Lorg/h2/server/web/WebApp;->setSession(Lorg/h2/server/web/WebSession;Ljava/util/Properties;)V

    const-string v1, "if-modified-since"

    .line 122
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {v3, v0, p1}, Lorg/h2/server/web/WebApp;->processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getSession()Lorg/h2/server/web/WebSession;

    move-result-object v0

    .line 128
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getCache()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    iget-object v4, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v4}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p1, 0x130

    .line 132
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    return-void

    .line 135
    :cond_5
    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, p1}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_6

    const/16 v0, 0x194

    .line 137
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    const-string v4, ".jsp"

    .line 140
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 141
    new-instance p1, Ljava/lang/String;

    sget-object v4, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 142
    iget-object v0, v0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 143
    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :cond_7
    move-object p1, v1

    .line 145
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    if-nez v3, :cond_8

    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    .line 147
    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "Cache-Control"

    const-string v1, "max-age=10"

    .line 149
    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Last-Modified"

    .line 150
    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_9

    .line 154
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p2

    .line 155
    invoke-virtual {p2, p1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    :cond_9
    return-void
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lorg/h2/server/web/WebServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public init()V
    .locals 7

    .line 35
    invoke-virtual {p0}, Lorg/h2/server/web/WebServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 37
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-interface {v0, v3}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 46
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    new-instance v1, Lorg/h2/server/web/WebServer;

    invoke-direct {v1}, Lorg/h2/server/web/WebServer;-><init>()V

    iput-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 52
    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebServer;->setAllowChunked(Z)V

    .line 53
    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->init([Ljava/lang/String;)V

    return-void
.end method
