.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;->f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;->f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->lambda$clearContactNotification$3(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
