.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;->f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;->f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    iget-boolean v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;->f$1:Z

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->lambda$keyAgreementAborted$5(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Z)V

    return-void
.end method
