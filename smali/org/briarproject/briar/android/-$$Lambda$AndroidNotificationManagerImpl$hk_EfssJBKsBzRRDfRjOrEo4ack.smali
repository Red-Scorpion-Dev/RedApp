.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$hk_EfssJBKsBzRRDfRjOrEo4ack;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$hk_EfssJBKsBzRRDfRjOrEo4ack;->f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$hk_EfssJBKsBzRRDfRjOrEo4ack;->f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    invoke-static {v0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->lambda$blockAllBlogPostNotifications$15(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    return-void
.end method