.class Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;
.super Ljava/lang/Thread;
.source "ContactExchangeTaskImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactExchangeTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final SIGNING_LABEL_EXCHANGE:Ljava/lang/String; = "org.briarproject.briar.contact/EXCHANGE"


# instance fields
.field private volatile alice:Z

.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private volatile conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

.field private final connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private volatile listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

.field private volatile localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private volatile masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

.field private final recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

.field private final streamReaderFactory:Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

.field private final streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

.field private volatile transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 90
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 91
    iput-object p3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    .line 92
    iput-object p4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    .line 93
    iput-object p5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 94
    iput-object p6, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    .line 95
    iput-object p7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 96
    iput-object p8, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 97
    iput-object p9, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 98
    iput-object p10, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->streamReaderFactory:Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    .line 99
    iput-object p11, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    return-void
.end method

.method private addContact(Lorg/briarproject/bramble/api/identity/Author;JLjava/util/Map;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "J",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)",
            "Lorg/briarproject/bramble/api/contact/ContactId;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v7, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactExchangeTaskImpl$6YgQ4hFXbz7jAfIRYNkHuzV6Oxc;-><init>(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;Lorg/briarproject/bramble/api/identity/Author;JLjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v7}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p1
.end method

.method public static synthetic lambda$addContact$0(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;Lorg/briarproject/bramble/api/identity/Author;JLjava/util/Map;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 292
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-boolean v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p5

    move-object v2, p1

    move-wide v5, p2

    .line 291
    invoke-interface/range {v0 .. v9}, Lorg/briarproject/bramble/api/contact/ContactManager;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    .line 294
    iget-object p2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    invoke-interface {p2, p5, p1, p4}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->addRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Map;)V

    return-object p1
.end method

.method private receiveContactInfo(Lorg/briarproject/bramble/api/record/RecordReader;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    :cond_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/record/RecordReader;->readRecord()Lorg/briarproject/bramble/api/record/Record;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getProtocolVersion()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 272
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getRecordType()B

    move-result v1

    if-nez v1, :cond_0

    .line 273
    sget-object p1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Received contact info"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getPayload()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    const/4 v0, 0x4

    .line 275
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    .line 276
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    .line 277
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 279
    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v5

    const/4 v0, 0x2

    .line 280
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v6

    const/16 v0, 0x40

    .line 281
    invoke-static {v6, v2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    const/4 v0, 0x3

    .line 282
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long p1, v7, v0

    if-ltz p1, :cond_1

    .line 284
    new-instance p1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;-><init>(Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJLorg/briarproject/bramble/contact/ContactExchangeTaskImpl$1;)V

    return-object p1

    .line 283
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 271
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private sendContactInfo(Lorg/briarproject/bramble/api/record/RecordWriter;Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/record/RecordWriter;",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;[BJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 258
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    const/4 v0, 0x4

    .line 259
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p3, 0x2

    aput-object p4, v0, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, v0, p4

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p3

    .line 260
    new-instance p4, Lorg/briarproject/bramble/api/record/Record;

    iget-object p5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 261
    invoke-interface {p5, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p3

    invoke-direct {p4, p2, v1, p3}, Lorg/briarproject/bramble/api/record/Record;-><init>(BB[B)V

    .line 260
    invoke-interface {p1, p4}, Lorg/briarproject/bramble/api/record/RecordWriter;->writeRecord(Lorg/briarproject/bramble/api/record/Record;)V

    .line 262
    sget-object p1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Sent contact info"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private sign(Lorg/briarproject/bramble/api/identity/LocalAuthor;[B)[B
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.contact/EXCHANGE"

    .line 239
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object p1

    .line 238
    invoke-interface {v0, v1, p2, p1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->sign(Ljava/lang/String;[B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 241
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 2

    .line 302
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Closing connection"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->dispose(ZZ)V

    .line 304
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->dispose(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    sget-object v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private verify(Lorg/briarproject/bramble/api/identity/Author;[B[B)Z
    .locals 2

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.contact/EXCHANGE"

    .line 248
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object p1

    .line 247
    invoke-interface {v0, p3, v1, p2, p1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->verifySignature([BLjava/lang/String;[B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 134
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->getLocalProperties()Ljava/util/Map;

    move-result-object v6
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_4

    .line 143
    iget-object v2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v3, "org.briarproject.bramble.contact/ALICE_HEADER_KEY"

    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

    const/4 v5, 0x1

    new-array v7, v5, [[B

    new-array v8, v5, [B

    const/4 v9, 0x0

    aput-byte v5, v8, v9

    aput-object v8, v7, v9

    invoke-interface {v2, v3, v4, v7}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v4, "org.briarproject.bramble.contact/BOB_HEADER_KEY"

    iget-object v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

    new-array v8, v5, [[B

    new-array v10, v5, [B

    aput-byte v5, v10, v9

    aput-object v10, v8, v9

    invoke-interface {v3, v4, v7, v8}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->streamReaderFactory:Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    iget-boolean v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    if-eqz v7, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v7, v2

    .line 150
    :goto_0
    invoke-interface {v4, v0, v7}, Lorg/briarproject/bramble/api/transport/StreamReaderFactory;->createContactExchangeStreamReader(Ljava/io/InputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Ljava/io/InputStream;

    move-result-object v0

    .line 152
    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    .line 153
    invoke-interface {v4, v0}, Lorg/briarproject/bramble/api/record/RecordReaderFactory;->createRecordReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/record/RecordReader;

    move-result-object v0

    .line 156
    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    iget-boolean v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 157
    :goto_1
    invoke-interface {v4, v1, v2}, Lorg/briarproject/bramble/api/transport/StreamWriterFactory;->createContactExchangeStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/transport/StreamWriter;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    .line 161
    invoke-interface {v1}, Lorg/briarproject/bramble/api/transport/StreamWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/record/RecordWriterFactory;->createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/record/RecordWriter;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v4, "org.briarproject.bramble.contact/ALICE_NONCE"

    iget-object v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

    new-array v8, v5, [[B

    new-array v10, v5, [B

    aput-byte v5, v10, v9

    aput-object v10, v8, v9

    invoke-interface {v3, v4, v7, v8}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object v3

    .line 166
    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v7, "org.briarproject.bramble.contact/BOB_NONCE"

    iget-object v8, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

    new-array v10, v5, [[B

    new-array v11, v5, [B

    aput-byte v5, v11, v9

    aput-object v11, v10, v9

    invoke-interface {v4, v7, v8, v10}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object v4

    .line 168
    iget-boolean v5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    if-eqz v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 169
    :goto_2
    iget-boolean v7, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    if-eqz v7, :cond_3

    move-object v10, v4

    goto :goto_3

    :cond_3
    move-object v10, v3

    .line 172
    :goto_3
    iget-object v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    invoke-direct {p0, v3, v5}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->sign(Lorg/briarproject/bramble/api/identity/LocalAuthor;[B)[B

    move-result-object v7

    .line 175
    iget-object v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v11

    .line 178
    :try_start_2
    iget-boolean v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    if-eqz v3, :cond_4

    .line 179
    iget-object v5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-object v3, p0

    move-object v4, v2

    move-wide v8, v11

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->sendContactInfo(Lorg/briarproject/bramble/api/record/RecordWriter;Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJ)V

    .line 181
    invoke-interface {v2}, Lorg/briarproject/bramble/api/record/RecordWriter;->flush()V

    .line 182
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->receiveContactInfo(Lorg/briarproject/bramble/api/record/RecordReader;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;

    move-result-object v2

    goto :goto_4

    .line 184
    :cond_4
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->receiveContactInfo(Lorg/briarproject/bramble/api/record/RecordReader;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;

    move-result-object v13

    .line 185
    iget-object v5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-object v3, p0

    move-object v4, v2

    move-wide v8, v11

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->sendContactInfo(Lorg/briarproject/bramble/api/record/RecordWriter;Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJ)V

    .line 187
    invoke-interface {v2}, Lorg/briarproject/bramble/api/record/RecordWriter;->flush()V

    move-object v2, v13

    .line 190
    :goto_4
    invoke-interface {v1}, Lorg/briarproject/bramble/api/transport/StreamWriter;->sendEndOfStream()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 193
    :goto_5
    :try_start_3
    invoke-interface {v0}, Lorg/briarproject/bramble/api/record/RecordReader;->readRecord()Lorg/briarproject/bramble/api/record/Record;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 195
    :catch_0
    :try_start_4
    sget-object v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "End of stream"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$000(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$100(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)[B

    move-result-object v1

    invoke-direct {p0, v0, v10, v1}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->verify(Lorg/briarproject/bramble/api/identity/Author;[B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 206
    sget-object v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Invalid signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->contactExchangeFailed()V

    .line 208
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void

    .line 213
    :cond_5
    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$200(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)J

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 217
    :try_start_5
    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$000(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    .line 218
    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$300(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Ljava/util/Map;

    move-result-object v4

    .line 217
    invoke-direct {p0, v3, v0, v1, v4}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->addContact(Lorg/briarproject/bramble/api/identity/Author;JLjava/util/Map;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    iget-object v3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    iget-object v4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-interface {v1, v0, v3, v4}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    .line 223
    sget-object v0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Pseudonym exchange succeeded"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$000(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->contactExchangeSucceeded(Lorg/briarproject/bramble/api/identity/Author;)V
    :try_end_5
    .catch Lorg/briarproject/bramble/api/db/ContactExistsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 230
    sget-object v1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 231
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    .line 232
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->contactExchangeFailed()V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 226
    sget-object v1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v3, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 227
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    .line 228
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-static {v2}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->access$000(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->duplicateContact(Lorg/briarproject/bramble/api/identity/Author;)V

    :goto_6
    return-void

    :catch_3
    move-exception v0

    .line 198
    sget-object v1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 199
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->contactExchangeFailed()V

    .line 200
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void

    :catch_4
    move-exception v0

    .line 136
    sget-object v1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->contactExchangeFailed()V

    .line 138
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void

    :catch_5
    move-exception v0

    .line 125
    sget-object v1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactExchangeListener;->contactExchangeFailed()V

    .line 127
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void
.end method

.method public startExchange(Lorg/briarproject/bramble/api/contact/ContactExchangeListener;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->listener:Lorg/briarproject/bramble/api/contact/ContactExchangeListener;

    .line 108
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 109
    iput-object p4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    .line 110
    iput-object p5, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 111
    iput-object p3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->masterSecret:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 112
    iput-boolean p6, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->alice:Z

    .line 113
    invoke-virtual {p0}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;->start()V

    return-void
.end method
