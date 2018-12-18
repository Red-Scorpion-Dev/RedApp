.class interface abstract Lorg/briarproject/briar/introduction/SessionEncoder;
.super Ljava/lang/Object;
.source "SessionEncoder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract encodeIntroduceeSession(Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract encodeIntroducerSession(Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract getIntroduceeSessionsByIntroducerQuery(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract getIntroducerSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method
