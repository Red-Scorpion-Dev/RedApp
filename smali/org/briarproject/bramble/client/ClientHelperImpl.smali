.class Lorg/briarproject/bramble/client/ClientHelperImpl;
.super Ljava/lang/Object;
.source "ClientHelperImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/client/ClientHelper;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final SALT_LENGTH:I = 0x20


# instance fields
.field private final authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

.field private final bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

.field private final bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

.field private final metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

.field private final metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/data/BdfReaderFactory;Lorg/briarproject/bramble/api/data/BdfWriterFactory;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 73
    iput-object p2, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 74
    iput-object p3, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    .line 75
    iput-object p4, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    .line 76
    iput-object p5, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    .line 77
    iput-object p6, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 78
    iput-object p7, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 79
    iput-object p8, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    return-void
.end method

.method public static synthetic lambda$addLocalMessage$0(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;ZLorg/briarproject/bramble/api/db/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p4, p1, p2, p3}, Lorg/briarproject/bramble/client/ClientHelperImpl;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    return-void
.end method

.method public static synthetic lambda$getGroupMetadataAsDictionary$3(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getMessage$1(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getMessageAsList$2(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getMessageMetadataAsDictionary$4(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getMessageMetadataAsDictionary$5(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getMessageMetadataAsDictionary$6(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p3, p1, p2}, Lorg/briarproject/bramble/client/ClientHelperImpl;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$mergeGroupMetadata$7(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p3, p1, p2}, Lorg/briarproject/bramble/client/ClientHelperImpl;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-void
.end method

.method public static synthetic lambda$mergeMessageMetadata$8(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p3, p1, p2}, Lorg/briarproject/bramble/client/ClientHelperImpl;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-void
.end method


# virtual methods
.method public addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    invoke-interface {v1, p3}, Lorg/briarproject/bramble/api/data/MetadataEncoder;->encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;Z)V

    return-void
.end method

.method public addLocalMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$hcCSUDF8T_pipPSV4dmdNHSsMOc;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method

.method public createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-virtual {p0, p4}, Lorg/briarproject/bramble/client/ClientHelperImpl;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public createMessageForStoringMetadata(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 4

    const/16 v0, 0x20

    .line 103
    new-array v0, v0, [B

    .line 104
    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 105
    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/data/MetadataParser;->parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$YF3PlfYVnTm1hNSNtjOVbNFXh6g;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1
.end method

.method public getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$zyAEqeNjZJLckmtjOh89ouHuin4;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$zyAEqeNjZJLckmtjOh89ouHuin4;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/Message;

    return-object p1
.end method

.method public getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getBody()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method public getMessageAsList(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$VOZWJX6CZroYgKx8y6SdgNCs0aU;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$VOZWJX6CZroYgKx8y6SdgNCs0aU;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1
.end method

.method public getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    .line 169
    new-instance p2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/data/MetadataParser;->parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    invoke-interface {v0, p3}, Lorg/briarproject/bramble/api/data/MetadataEncoder;->encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p3

    .line 188
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;

    move-result-object p1

    .line 189
    new-instance p2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 190
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-interface {v1, p3}, Lorg/briarproject/bramble/api/data/MetadataParser;->parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$53rPAjC60AxabgUDq2R6guTOmOE;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$078ml1vVmbQ4HJHPtfpZtPmv2e4;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$078ml1vVmbQ4HJHPtfpZtPmv2e4;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/data/MetadataParser;->parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$O7atXhfjOiNCvSA1u4SpVlyje9k;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$O7atXhfjOiNCvSA1u4SpVlyje9k;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1
.end method

.method public mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    invoke-interface {v1, p3}, Lorg/briarproject/bramble/api/data/MetadataEncoder;->encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void
.end method

.method public mergeGroupMetadata(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$EqjePp2CxCQ0u0tuJKH4OfCScP0;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method

.method public mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    invoke-interface {v1, p3}, Lorg/briarproject/bramble/api/data/MetadataEncoder;->encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void
.end method

.method public mergeMessageMetadata(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$NSr_BGTuMBT_WpjytofdnB59vxg;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/client/-$$Lambda$ClientHelperImpl$NSr_BGTuMBT_WpjytofdnB59vxg;-><init>(Lorg/briarproject/bramble/client/ClientHelperImpl;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method

.method public parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 325
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    .line 329
    invoke-static {v2, v1, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v3, 0x2

    .line 330
    invoke-virtual {p1, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p1

    const/16 v3, 0x20

    .line 331
    invoke-static {p1, v1, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 332
    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    invoke-interface {v1, v0, v2, p1}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createAuthor(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p1

    return-object p1

    .line 327
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public parseAndValidateTransportProperties(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 338
    invoke-static {p1, v1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfDictionary;II)V

    .line 339
    new-instance v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    .line 340
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 341
    invoke-static {v3, v4, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 342
    invoke-virtual {p1, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-static {v5, v4, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 344
    invoke-virtual {v1, v3, v5}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 354
    new-instance v3, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-direct {v3, v2}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    .line 356
    invoke-virtual {p0, v2}, Lorg/briarproject/bramble/client/ClientHelperImpl;->parseAndValidateTransportProperties(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v2

    .line 358
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-virtual {p0, p2}, Lorg/briarproject/bramble/client/ClientHelperImpl;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->sign(Ljava/lang/String;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public toByteArray(Lorg/briarproject/bramble/api/data/BdfDictionary;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/data/BdfWriterFactory;->createWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/data/BdfWriter;

    move-result-object v1

    .line 224
    :try_start_0
    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeDictionary(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 226
    throw p1
.end method

.method public toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/data/BdfWriterFactory;->createWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/data/BdfWriter;

    move-result-object v1

    .line 238
    :try_start_0
    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeList(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 240
    throw p1
.end method

.method public toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;"
        }
    .end annotation

    .line 271
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v3, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toDictionary(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1

    .line 265
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public toDictionary([BII)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 251
    iget-object p1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/data/BdfReaderFactory;->createReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/data/BdfReader;

    move-result-object p1

    .line 253
    :try_start_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    .line 254
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->eof()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 257
    throw p1
.end method

.method public toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 3

    const/4 v0, 0x3

    .line 304
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getFormatVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method public toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 299
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getBody()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/client/ClientHelperImpl;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method public toList([B)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 294
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/briarproject/bramble/client/ClientHelperImpl;->toList([BII)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method public toList([BII)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 280
    iget-object p1, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/data/BdfReaderFactory;->createReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/data/BdfReader;

    move-result-object p1

    .line 282
    :try_start_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readList()Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 283
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->eof()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 288
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 286
    throw p1
.end method

.method public verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientHelperImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-virtual {p0, p3}, Lorg/briarproject/bramble/client/ClientHelperImpl;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->verifySignature([BLjava/lang/String;[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 318
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
