.class public interface abstract Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
.super Ljava/lang/Object;
.source "PrivateGroupFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
.end method

.method public abstract createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
.end method

.method public abstract parsePrivateGroup(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
