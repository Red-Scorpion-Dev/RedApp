.class public abstract Lorg/briarproject/briar/client/BdfIncomingMessageHook;
.super Ljava/lang/Object;
.source "BdfIncomingMessageHook.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field protected final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field protected final metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/client/BdfIncomingMessageHook;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 30
    iput-object p2, p0, Lorg/briarproject/briar/client/BdfIncomingMessageHook;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 31
    iput-object p3, p0, Lorg/briarproject/briar/client/BdfIncomingMessageHook;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    return-void
.end method


# virtual methods
.method protected abstract incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/client/BdfIncomingMessageHook;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/briarproject/briar/client/BdfIncomingMessageHook;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    invoke-interface {v1, p3}, Lorg/briarproject/bramble/api/data/MetadataParser;->parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 60
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/briarproject/briar/client/BdfIncomingMessageHook;->incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z

    move-result p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
