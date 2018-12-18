.class public Lorg/h2/security/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# static fields
.field public static final DEFAULT_LEGACY_ALGORITHMS:Ljava/lang/String;

.field private static final KEYSTORE:Ljava/lang/String; = "~/.h2.keystore"

.field private static final KEYSTORE_KEY:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final KEYSTORE_PASSWORD:Ljava/lang/String; = "h2pass"

.field private static final KEYSTORE_PASSWORD_KEY:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final LEGACY_ALGORITHMS_SECURITY_KEY:Ljava/lang/String; = "jdk.tls.legacyAlgorithms"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Lorg/h2/security/CipherFactory;->getLegacyAlgorithmsSilently()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/security/CipherFactory;->DEFAULT_LEGACY_ALGORITHMS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createServerSocket(ILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-boolean v0, Lorg/h2/engine/SysProperties;->ENABLE_ANONYMOUS_TLS:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lorg/h2/security/CipherFactory;->removeAnonFromLegacyAlgorithms()V

    .line 147
    :cond_0
    invoke-static {}, Lorg/h2/security/CipherFactory;->setKeystore()V

    .line 148
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    if-nez p1, :cond_1

    .line 151
    invoke-virtual {v0, p0}, Ljavax/net/ServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLServerSocket;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, p0, v1, p1}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLServerSocket;

    .line 155
    :goto_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/security/CipherFactory;->disableSSL([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 157
    sget-boolean p1, Lorg/h2/engine/SysProperties;->ENABLE_ANONYMOUS_TLS:Z

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/security/CipherFactory;->enableAnonymous([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public static createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-static {}, Lorg/h2/security/CipherFactory;->setKeystore()V

    .line 111
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 112
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 113
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget p0, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_TIMEOUT:I

    invoke-virtual {v0, v1, p0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 115
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/security/CipherFactory;->disableSSL([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 117
    sget-boolean p0, Lorg/h2/engine/SysProperties;->ENABLE_ANONYMOUS_TLS:Z

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/h2/security/CipherFactory;->enableAnonymous([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static disableSSL([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 405
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "SSL"

    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 407
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static enableAnonymous([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 390
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 391
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const-string v5, "SSL"

    .line 392
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "_anon_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    const-string v5, "_AES_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    const-string v5, "_3DES_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    :cond_0
    const-string v5, "_SHA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 396
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 400
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;
    .locals 1

    const-string v0, "XTEA"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance p0, Lorg/h2/security/XTEA;

    invoke-direct {p0}, Lorg/h2/security/XTEA;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "AES"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance p0, Lorg/h2/security/AES;

    invoke-direct {p0}, Lorg/h2/security/AES;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "FOG"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    new-instance p0, Lorg/h2/security/Fog;

    invoke-direct {p0}, Lorg/h2/security/Fog;-><init>()V

    return-object p0

    :cond_2
    const v0, 0x15fc7

    .line 96
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v1, "RSA"

    .line 287
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 289
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    const-string v3, "30820277020100300d06092a864886f70d0101010500048202613082025d02010002818100dc0a13c602b7141110eade2f051b54777b060d0f74e6a110f9cce81159f271ebc88d8e8aa1f743b505fc2e7dfe38d33b8d3f64d1b363d1af4d877833897954cbaec2fa384c22a415498cf306bb07ac09b76b001cd68bf77ea0a628f5101959cf2993a9c23dbee79b19305977f8715ae78d023471194cc900b231eecb0aaea98d02030100010281810099aa4ff4d0a09a5af0bd953cb10c4d08c3d98df565664ac5582e494314d5c3c92dddedd5d316a32a206be4ec084616fe57be15e27cad111aa3c21fa79e32258c6ca8430afc69eddd52d3b751b37da6b6860910b94653192c0db1d02abcfd6ce14c01f238eec7c20bd3bb750940004bacba2880349a9494d10e139ecb2355d101024100ffdc3defd9c05a2d377ef6019fa62b3fbd5b0020a04cc8533bca730e1f6fcf5dfceea1b044fbe17d9eababfbc7d955edad6bc60f9be826ad2c22ba77d19a9f65024100dc28d43fdbbc93852cc3567093157702bc16f156f709fb7db0d9eec028f41fd0edcd17224c866e66be1744141fb724a10fd741c8a96afdd9141b36d67fff6309024077b1cddbde0f69604bdcfe33263fb36ddf24aa3b9922327915b890f8a36648295d0139ecdf68c245652c4489c6257b58744fbdd961834a4cab201801a3b1e52d024100b17142e8991d1b350a0802624759d48ae2b8071a158ff91fabeb6a8f7c328e762143dc726b8529f42b1fab6220d1c676fdc27ba5d44e847c72c52064afd351a902407c6e23fe35bcfcd1a662aa82a2aa725fcece311644d5b6e3894853fd4ce9fe78218c957b1ff03fc9e5ef8ffeb6bd58235f6a215c97d354fdace7e781e4a63e8b"

    invoke-static {v3}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 323
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x1

    .line 324
    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "3082018b3081f502044295ce6b300d06092a864886f70d0101040500300d310b3009060355040313024832301e170d3035303532363133323630335a170d3337303933303036353734375a300d310b300906035504031302483230819f300d06092a864886f70d010101050003818d0030818902818100dc0a13c602b7141110eade2f051b54777b060d0f74e6a110f9cce81159f271ebc88d8e8aa1f743b505fc2e7dfe38d33b8d3f64d1b363d1af4d877833897954cbaec2fa384c22a415498cf306bb07ac09b76b001cd68bf77ea0a628f5101959cf2993a9c23dbee79b19305977f8715ae78d023471194cc900b231eecb0aaea98d0203010001300d06092a864886f70d01010405000381810083f4401a279453701bef9a7681a5b8b24f153f7d18c7c892133d97bd5f13736be7505290a445a7d5ceb75522403e5097515cd966ded6351ff60d5193de34cd36e5cb04d380398e66286f99923fd92296645fd4ada45844d194dfd815e6cd57f385c117be982809028bba1116c85740b3d27a55b1a0948bf291ddba44bed337b9"

    invoke-static {v6}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "h2"

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v0, v3, v1, p0, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 353
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private static getKeyStoreBytes(Ljava/security/KeyStore;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 263
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static getLegacyAlgorithmsSilently()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "jdk.tls.legacyAlgorithms"

    .line 239
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized removeAnonFromLegacyAlgorithms()V
    .locals 3

    const-class v0, Lorg/h2/security/CipherFactory;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-static {}, Lorg/h2/security/CipherFactory;->getLegacyAlgorithmsSilently()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_0
    :try_start_1
    invoke-static {v1}, Lorg/h2/security/CipherFactory;->removeDhAnonFromCommaSeparatedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    invoke-static {v2}, Lorg/h2/security/CipherFactory;->setLegacyAlgorithmsSilently(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 205
    monitor-exit v0

    throw v1
.end method

.method public static removeDhAnonFromCommaSeparatedList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    .line 180
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v1, "DH_anon"

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ECDH_anon"

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 184
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static declared-synchronized resetDefaultLegacyAlgorithms()V
    .locals 2

    const-class v0, Lorg/h2/security/CipherFactory;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Lorg/h2/security/CipherFactory;->DEFAULT_LEGACY_ALGORITHMS:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/security/CipherFactory;->setLegacyAlgorithmsSilently(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 225
    monitor-exit v0

    throw v1
.end method

.method private static setKeystore()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "javax.net.ssl.keyStore"

    .line 359
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "~/.h2.keystore"

    const-string v2, "h2pass"

    .line 361
    invoke-static {v2}, Lorg/h2/security/CipherFactory;->getKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const-string v3, "h2pass"

    invoke-static {v2, v3}, Lorg/h2/security/CipherFactory;->getKeyStoreBytes(Ljava/security/KeyStore;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 364
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v6

    array-length v4, v2

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    .line 366
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 367
    invoke-static {v4, v5}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 368
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 374
    :try_start_0
    invoke-static {v1, v5}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3

    .line 375
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 376
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 378
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 381
    :cond_1
    :goto_0
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.net.ssl.keyStore"

    .line 382
    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v1, "javax.net.ssl.keyStorePassword"

    .line 384
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "javax.net.ssl.keyStorePassword"

    const-string v1, "h2pass"

    .line 385
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private static setLegacyAlgorithmsSilently(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "jdk.tls.legacyAlgorithms"

    .line 251
    invoke-static {v0, p0}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
