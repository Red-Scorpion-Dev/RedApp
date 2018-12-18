.class public interface abstract Lorg/briarproject/bramble/api/sync/SyncSessionFactory;
.super Ljava/lang/Object;
.source "SyncSessionFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createDuplexOutgoingSession(Lorg/briarproject/bramble/api/contact/ContactId;IILorg/briarproject/bramble/api/transport/StreamWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
.end method

.method public abstract createIncomingSession(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/io/InputStream;)Lorg/briarproject/bramble/api/sync/SyncSession;
.end method

.method public abstract createSimplexOutgoingSession(Lorg/briarproject/bramble/api/contact/ContactId;ILorg/briarproject/bramble/api/transport/StreamWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
.end method
