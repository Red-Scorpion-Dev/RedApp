.class Lorg/briarproject/briar/android/AndroidEagerSingletons;
.super Ljava/lang/Object;
.source "AndroidEagerSingletons.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initEagerSingletons(Lorg/briarproject/briar/android/AndroidComponent;)V
    .locals 1

    .line 6
    new-instance v0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/android/AppModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/android/AndroidComponent;->inject(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)V

    return-void
.end method
