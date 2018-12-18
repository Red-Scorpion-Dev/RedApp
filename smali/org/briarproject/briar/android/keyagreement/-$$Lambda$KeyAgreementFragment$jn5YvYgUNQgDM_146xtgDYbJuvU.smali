.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/keyagreement/Payload;

.field private final synthetic f$2:Landroid/util/DisplayMetrics;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/Payload;Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;->f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;->f$1:Lorg/briarproject/bramble/api/keyagreement/Payload;

    iput-object p3, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;->f$2:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;->f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;->f$1:Lorg/briarproject/bramble/api/keyagreement/Payload;

    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;->f$2:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->lambda$setQrCode$8(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/Payload;Landroid/util/DisplayMetrics;)V

    return-void
.end method
