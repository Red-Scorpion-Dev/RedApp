.class public final synthetic Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/briar/android/controller/handler/ResultHandler;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/activity/BriarActivity;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/activity/BriarActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;->f$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    iput-boolean p2, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;->f$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    iget-boolean v1, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->lambda$signOut$4(Lorg/briarproject/briar/android/activity/BriarActivity;ZLjava/lang/Void;)V

    return-void
.end method
