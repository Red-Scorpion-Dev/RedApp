.class public final synthetic Lorg/briarproject/briar/android/panic/-$$Lambda$PanicResponderActivity$JWb1q5AMNgqfNKz55-qx542i_5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/panic/PanicResponderActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicResponderActivity$JWb1q5AMNgqfNKz55-qx542i_5o;->f$0:Lorg/briarproject/briar/android/panic/PanicResponderActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicResponderActivity$JWb1q5AMNgqfNKz55-qx542i_5o;->f$0:Lorg/briarproject/briar/android/panic/PanicResponderActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->lambda$deleteAllData$0(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V

    return-void
.end method
