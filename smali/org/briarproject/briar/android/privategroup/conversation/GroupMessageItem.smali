.class Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;
.super Lorg/briarproject/briar/android/threaded/ThreadItem;
.source "GroupMessageItem.java"


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 26
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/threaded/ThreadItem;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    move-object v1, p2

    .line 27
    iput-object v1, v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;)V
    .locals 10

    .line 31
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getTimestamp()J

    move-result-wide v5

    .line 32
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v7

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v8

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->isRead()Z

    move-result v9

    move-object v0, p0

    move-object v4, p2

    .line 31
    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0c006c

    return v0
.end method
