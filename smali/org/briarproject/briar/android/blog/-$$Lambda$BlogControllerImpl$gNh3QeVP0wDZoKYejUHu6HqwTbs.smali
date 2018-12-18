.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BlogControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;->f$0:Lorg/briarproject/briar/android/blog/BlogControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;->f$0:Lorg/briarproject/briar/android/blog/BlogControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->lambda$onBlogLeft$1(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
