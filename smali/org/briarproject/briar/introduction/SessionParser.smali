.class interface abstract Lorg/briarproject/briar/introduction/SessionParser;
.super Ljava/lang/Object;
.source "SessionParser.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/introduction/Role;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract parseIntroduceeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
