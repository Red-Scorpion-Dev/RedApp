.class public final synthetic Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/controller/SharingControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/controller/SharingControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;->f$0:Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;->f$0:Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->lambda$setConnected$0(Lorg/briarproject/briar/android/controller/SharingControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
