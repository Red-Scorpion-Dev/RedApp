.class Lorg/briarproject/briar/android/forum/ForumItem;
.super Lorg/briarproject/briar/android/threaded/ThreadItem;
.source "ForumItem.java"


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    .line 22
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/threaded/ThreadItem;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)V
    .locals 9

    .line 16
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    .line 17
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v7

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->isRead()Z

    move-result v8

    move-object v0, p0

    move-object v3, p2

    .line 16
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/threaded/ThreadItem;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-void
.end method
