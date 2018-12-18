.class public abstract Lorg/briarproject/briar/api/sharing/InvitationResponse;
.super Lorg/briarproject/briar/api/conversation/ConversationResponse;
.source "InvitationResponse.java"


# instance fields
.field private final shareableId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p10}, Lorg/briarproject/briar/api/conversation/ConversationResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Z)V

    .line 16
    iput-object p11, p0, Lorg/briarproject/briar/api/sharing/InvitationResponse;->shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/InvitationResponse;->shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method
