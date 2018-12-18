.class public abstract Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.super Ljava/lang/Object;
.source "BdfMessageValidator.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field protected static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field protected final clock:Lorg/briarproject/bramble/api/system/Clock;

.field protected final metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 35
    iput-object p2, p0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 36
    iput-object p3, p0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method


# virtual methods
.method protected abstract validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/bramble/api/sync/MessageContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getBody()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lorg/briarproject/bramble/api/client/BdfMessageValidator;->metadataEncoder:Lorg/briarproject/bramble/api/data/MetadataEncoder;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/data/MetadataEncoder;->encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p2

    .line 55
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageContext;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDependencies()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/briarproject/bramble/api/sync/MessageContext;-><init>(Lorg/briarproject/bramble/api/db/Metadata;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 48
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    const-string p2, "Timestamp is too far in the future"

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
