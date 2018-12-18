.class public Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;
.super Ljava/lang/Object;
.source "BlogInvitationFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/sharing/InvitationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/sharing/InvitationFactory<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInvitationRequest(ZZZZLorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/briar/api/blog/BlogInvitationRequest;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "ZZ)",
            "Lorg/briarproject/briar/api/blog/BlogInvitationRequest;"
        }
    .end annotation

    .line 24
    new-instance v9, Lorg/briarproject/briar/api/client/SessionId;

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/sharing/InviteMessage;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 25
    new-instance v14, Lorg/briarproject/briar/api/blog/BlogInvitationRequest;

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/sharing/InviteMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 26
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v3

    .line 27
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/sharing/InviteMessage;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/sharing/InviteMessage;->getText()Ljava/lang/String;

    move-result-object v11

    move-object v0, v14

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lorg/briarproject/briar/api/blog/BlogInvitationRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/api/blog/Blog;Ljava/lang/String;ZZ)V

    return-object v14
.end method

.method public bridge synthetic createInvitationRequest(ZZZZLorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/briar/api/conversation/ConversationRequest;
    .locals 0

    .line 13
    invoke-virtual/range {p0 .. p8}, Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;->createInvitationRequest(ZZZZLorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/briar/api/blog/BlogInvitationRequest;

    move-result-object p1

    return-object p1
.end method

.method public createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/BlogInvitationResponse;
    .locals 13

    .line 34
    new-instance v9, Lorg/briarproject/briar/api/client/SessionId;

    invoke-virtual/range {p10 .. p10}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 35
    new-instance v12, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/sync/GroupId;)V

    return-object v12
.end method

.method public bridge synthetic createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/sharing/InvitationResponse;
    .locals 0

    .line 13
    invoke-virtual/range {p0 .. p10}, Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;->createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/BlogInvitationResponse;

    move-result-object p1

    return-object p1
.end method
