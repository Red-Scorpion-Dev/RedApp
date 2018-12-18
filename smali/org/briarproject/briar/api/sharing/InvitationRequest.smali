.class public abstract Lorg/briarproject/briar/api/sharing/InvitationRequest;
.super Lorg/briarproject/briar/api/conversation/ConversationRequest;
.source "InvitationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Lorg/briarproject/briar/api/conversation/ConversationRequest<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final canBeOpened:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/api/sharing/Shareable;Ljava/lang/String;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "JZZZZ",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "TS;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    xor-int/lit8 v12, p12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 19
    invoke-direct/range {v0 .. v12}, Lorg/briarproject/briar/api/conversation/ConversationRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/Nameable;Ljava/lang/String;Z)V

    move/from16 v1, p13

    .line 21
    iput-boolean v1, v0, Lorg/briarproject/briar/api/sharing/InvitationRequest;->canBeOpened:Z

    return-void
.end method


# virtual methods
.method public canBeOpened()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/briarproject/briar/api/sharing/InvitationRequest;->canBeOpened:Z

    return v0
.end method
