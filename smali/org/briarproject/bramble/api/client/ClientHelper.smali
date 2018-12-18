.class public interface abstract Lorg/briarproject/bramble/api/client/ClientHelper;
.super Ljava/lang/Object;
.source "ClientHelper.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract addLocalMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract createMessageForStoringMetadata(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessage(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getMessageAsList(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
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
.end method

.method public abstract getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
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
.end method

.method public abstract getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
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
.end method

.method public abstract getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
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
.end method

.method public abstract getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract mergeGroupMetadata(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract mergeMessageMetadata(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseAndValidateTransportProperties(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
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
.end method

.method public abstract sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract toByteArray(Lorg/briarproject/bramble/api/data/BdfDictionary;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;
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
.end method

.method public abstract toDictionary(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract toDictionary([BII)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;
.end method

.method public abstract toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract toList([B)Lorg/briarproject/bramble/api/data/BdfList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract toList([BII)Lorg/briarproject/bramble/api/data/BdfList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
