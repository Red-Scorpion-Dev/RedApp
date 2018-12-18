.class public Lorg/bitlet/weupnp/GatewayDevice;
.super Ljava/lang/Object;
.source "GatewayDevice.java"


# static fields
.field private static httpReadTimeout:I = 0x1b58


# instance fields
.field private controlURL:Ljava/lang/String;

.field private controlURLCIF:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private deviceTypeCIF:Ljava/lang/String;

.field private eventSubURL:Ljava/lang/String;

.field private eventSubURLCIF:Ljava/lang/String;

.field private friendlyName:Ljava/lang/String;

.field private localAddress:Ljava/net/InetAddress;

.field private location:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private modelDescription:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private presentationURL:Ljava/lang/String;

.field private sCPDURL:Ljava/lang/String;

.field private sCPDURLCIF:Ljava/lang/String;

.field private serviceType:Ljava/lang/String;

.field private serviceTypeCIF:Ljava/lang/String;

.field private st:Ljava/lang/String;

.field private urlBase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyOrCatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_2

    const-string v0, "http://"

    .line 662
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 665
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 668
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static simpleUPnPcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?>\r\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><SOAP-ENV:Body><m:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " xmlns:m=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 188
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 190
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ">"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "</m:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</SOAP-ENV:Body></SOAP-ENV:Envelope>"

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string p1, "POST"

    .line 205
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 206
    sget p1, Lorg/bitlet/weupnp/GatewayDevice;->httpReadTimeout:I

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 207
    sget p1, Lorg/bitlet/weupnp/GatewayDevice;->httpReadTimeout:I

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    .line 208
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "Content-Type"

    const-string p2, "text/xml"

    .line 209
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SOAPAction"

    .line 210
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string p2, "Close"

    .line 211
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string p2, "Content-Length"

    .line 215
    array-length p3, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 220
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2

    .line 222
    new-instance p3, Lorg/bitlet/weupnp/NameValueHandler;

    invoke-direct {p3, p1}, Lorg/bitlet/weupnp/NameValueHandler;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 223
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 v0, 0x1f4

    if-ne p3, v0, :cond_1

    .line 226
    :try_start_0
    new-instance p3, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 235
    :cond_1
    new-instance p3, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 236
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1
.end method


# virtual methods
.method public addPortMapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "NewRemoteHost"

    const-string v2, ""

    .line 302
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NewExternalPort"

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewProtocol"

    .line 304
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewInternalPort"

    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewInternalClient"

    .line 306
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewEnabled"

    const/4 p2, 0x1

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewPortMappingDescription"

    .line 308
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewLeaseDuration"

    const/4 p3, 0x0

    .line 309
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    iget-object p4, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceType:Ljava/lang/String;

    const-string p5, "AddPortMapping"

    invoke-static {p1, p4, p5, v0}, Lorg/bitlet/weupnp/GatewayDevice;->simpleUPnPcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string p4, "errorCode"

    .line 314
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public deletePortMapping(ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "NewRemoteHost"

    const-string v2, ""

    .line 462
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NewExternalPort"

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NewProtocol"

    .line 464
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    iget-object p2, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceType:Ljava/lang/String;

    const-string v1, "DeletePortMapping"

    invoke-static {p1, p2, v1, v0}, Lorg/bitlet/weupnp/GatewayDevice;->simpleUPnPcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    const/4 p1, 0x1

    return p1
.end method

.method public getExternalIPAddress()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceType:Ljava/lang/String;

    const-string v2, "GetExternalIPAddress"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bitlet/weupnp/GatewayDevice;->simpleUPnPcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "NewExternalIPAddress"

    .line 279
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTypeCIF()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceTypeCIF:Ljava/lang/String;

    return-object v0
.end method

.method public getSt()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->st:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceType:Ljava/lang/String;

    const-string v2, "GetStatusInfo"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bitlet/weupnp/GatewayDevice;->simpleUPnPcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "NewConnectionStatus"

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Connected"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadDescription()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/bitlet/weupnp/GatewayDevice;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 132
    sget v1, Lorg/bitlet/weupnp/GatewayDevice;->httpReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 134
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 135
    new-instance v2, Lorg/bitlet/weupnp/GatewayDeviceHandler;

    invoke-direct {v2, p0}, Lorg/bitlet/weupnp/GatewayDeviceHandler;-><init>(Lorg/bitlet/weupnp/GatewayDevice;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 136
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 141
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->urlBase:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->urlBase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->urlBase:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->location:Ljava/lang/String;

    :goto_0
    const/16 v1, 0x2f

    const/4 v2, 0x7

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->sCPDURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->copyOrCatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->sCPDURL:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->copyOrCatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURLCIF:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->copyOrCatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURLCIF:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDevice;->presentationURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->copyOrCatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitlet/weupnp/GatewayDevice;->presentationURL:Ljava/lang/String;

    return-void
.end method

.method public setControlURL(Ljava/lang/String;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURL:Ljava/lang/String;

    return-void
.end method

.method public setControlURLCIF(Ljava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->controlURLCIF:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceTypeCIF(Ljava/lang/String;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->deviceTypeCIF:Ljava/lang/String;

    return-void
.end method

.method public setEventSubURL(Ljava/lang/String;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->eventSubURL:Ljava/lang/String;

    return-void
.end method

.method public setEventSubURLCIF(Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->eventSubURLCIF:Ljava/lang/String;

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->localAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->location:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->modelDescription:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->modelNumber:Ljava/lang/String;

    return-void
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->presentationURL:Ljava/lang/String;

    return-void
.end method

.method public setSCPDURL(Ljava/lang/String;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->sCPDURL:Ljava/lang/String;

    return-void
.end method

.method public setSCPDURLCIF(Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->sCPDURLCIF:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceType:Ljava/lang/String;

    return-void
.end method

.method public setServiceTypeCIF(Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->serviceTypeCIF:Ljava/lang/String;

    return-void
.end method

.method public setSt(Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->st:Ljava/lang/String;

    return-void
.end method

.method public setURLBase(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDevice;->urlBase:Ljava/lang/String;

    return-void
.end method
