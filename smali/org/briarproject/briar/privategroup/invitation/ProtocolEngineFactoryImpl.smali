.class Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;
.super Ljava/lang/Object;
.source "ProtocolEngineFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

.field private final messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

.field private final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

.field private final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

.field private final privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 43
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 44
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 45
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 46
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 47
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 48
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 49
    iput-object p8, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    .line 50
    iput-object p9, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 51
    iput-object p10, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 52
    iput-object p11, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method


# virtual methods
.method public createCreatorEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/CreatorSession;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v12, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    iget-object v8, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    iget-object v9, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    iget-object v10, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    iget-object v11, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v12
.end method

.method public createInviteeEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/InviteeSession;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v12, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    iget-object v8, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    iget-object v9, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    iget-object v10, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    iget-object v11, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v12
.end method

.method public createPeerEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/PeerSession;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v12, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    iget-object v8, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    iget-object v9, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    iget-object v10, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    iget-object v11, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v12
.end method
