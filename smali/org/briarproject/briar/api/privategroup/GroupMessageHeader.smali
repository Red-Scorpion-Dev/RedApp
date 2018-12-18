.class public Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
.super Lorg/briarproject/briar/api/client/PostHeader;
.source "GroupMessageHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 22
    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/api/client/PostHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    move-object v1, p1

    .line 23
    iput-object v1, v0, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method
