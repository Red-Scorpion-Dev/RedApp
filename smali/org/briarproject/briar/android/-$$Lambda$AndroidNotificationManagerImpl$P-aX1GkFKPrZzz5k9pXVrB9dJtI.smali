.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$P-aX1GkFKPrZzz5k9pXVrB9dJtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$P-aX1GkFKPrZzz5k9pXVrB9dJtI;->f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$P-aX1GkFKPrZzz5k9pXVrB9dJtI;->f$0:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    invoke-static {v0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->lambda$stopService$1(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
