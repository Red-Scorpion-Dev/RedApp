.class public final synthetic Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

.field private final synthetic f$1:J

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final synthetic f$3:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final synthetic f$6:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    iput-wide p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$1:J

    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$2:Lorg/briarproject/bramble/api/sync/MessageId;

    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$3:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$5:Lorg/briarproject/bramble/api/sync/MessageId;

    iput-object p8, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$6:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    iget-wide v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$1:J

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$2:Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v4, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$3:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iget-object v5, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$5:Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v7, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;->f$6:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static/range {v0 .. v7}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->lambda$createMessage$6(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
