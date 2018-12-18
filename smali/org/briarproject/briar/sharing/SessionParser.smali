.class interface abstract Lorg/briarproject/briar/sharing/SessionParser;
.super Ljava/lang/Object;
.source "SessionParser.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getAllSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
