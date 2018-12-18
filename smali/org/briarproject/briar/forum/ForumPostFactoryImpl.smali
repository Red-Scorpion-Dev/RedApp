.class Lorg/briarproject/briar/forum/ForumPostFactoryImpl;
.super Ljava/lang/Object;
.source "ForumPostFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/forum/ForumPostFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method


# virtual methods
.method public createPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/forum/ForumPost;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/16 v5, 0x7c00

    .line 39
    invoke-static {v4, v5}, Lorg/briarproject/bramble/util/StringUtils;->utf8IsTooLong(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    iget-object v5, v0, Lorg/briarproject/briar/forum/ForumPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v5, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v5

    const/4 v6, 0x5

    .line 43
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    aput-object v2, v6, v8

    const/4 v10, 0x3

    aput-object v5, v6, v10

    const/4 v11, 0x4

    aput-object v4, v6, v11

    invoke-static {v6}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v6

    .line 46
    iget-object v12, v0, Lorg/briarproject/briar/forum/ForumPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v13, Lorg/briarproject/briar/forum/ForumPostFactoryImpl;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 47
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v14

    .line 46
    invoke-interface {v12, v13, v6, v14}, Lorg/briarproject/bramble/api/client/ClientHelper;->sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B

    move-result-object v6

    .line 49
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v7

    aput-object v5, v11, v9

    aput-object v4, v11, v8

    aput-object v6, v11, v10

    invoke-static {v11}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    .line 50
    iget-object v5, v0, Lorg/briarproject/briar/forum/ForumPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    move-wide/from16 v6, p2

    invoke-interface {v5, v1, v6, v7, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 51
    new-instance v4, Lorg/briarproject/briar/api/forum/ForumPost;

    invoke-direct {v4, v1, v2, v3}, Lorg/briarproject/briar/api/forum/ForumPost;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V

    return-object v4

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
