.class interface abstract Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;
.super Ljava/lang/Object;
.source "ProtocolEngineFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createCreatorEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/CreatorSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createInviteeEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/InviteeSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createPeerEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/PeerSession;",
            ">;"
        }
    .end annotation
.end method
