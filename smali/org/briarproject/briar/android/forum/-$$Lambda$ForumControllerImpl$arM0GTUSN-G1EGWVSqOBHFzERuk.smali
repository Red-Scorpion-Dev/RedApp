.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumControllerImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:J

.field private final synthetic f$3:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final synthetic f$4:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private final synthetic f$5:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$0:Lorg/briarproject/briar/android/forum/ForumControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$2:J

    iput-object p5, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$3:Lorg/briarproject/bramble/api/sync/MessageId;

    iput-object p6, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$4:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iput-object p7, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$5:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$0:Lorg/briarproject/briar/android/forum/ForumControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$2:J

    iget-object v4, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$3:Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v5, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$4:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    iget-object v6, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;->f$5:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->lambda$createMessage$2(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
