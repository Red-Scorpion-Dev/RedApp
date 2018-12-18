.class Lorg/briarproject/briar/sharing/ForumSharingValidator;
.super Lorg/briarproject/briar/sharing/SharingValidator;
.source "ForumSharingValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/sharing/SharingValidator;-><init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 32
    iput-object p5, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator;->forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

    return-void
.end method


# virtual methods
.method protected validateDescriptor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 39
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    .line 41
    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 42
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p1

    const/16 v1, 0x20

    .line 43
    invoke-static {p1, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 44
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator;->forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/briar/api/forum/ForumFactory;->createForum(Ljava/lang/String;[B)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    return-object p1
.end method
