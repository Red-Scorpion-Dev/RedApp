.class public final synthetic Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;Lorg/briarproject/briar/api/sharing/SharingInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$0:Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$1:Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$2:Z

    iput-object p4, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$3:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$0:Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$1:Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$2:Z

    iget-object v3, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$ForumInvitationControllerImpl$ubrTij2nrrX32ObeN2jlD4oPFw8;->f$3:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;->lambda$respondToInvitation$0(Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;Lorg/briarproject/briar/api/sharing/SharingInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
