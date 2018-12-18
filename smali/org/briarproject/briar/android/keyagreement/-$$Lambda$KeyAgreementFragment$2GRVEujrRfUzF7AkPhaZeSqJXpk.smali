.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

.field private final synthetic f$1:Lcom/google/zxing/Result;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lcom/google/zxing/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;->f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;->f$1:Lcom/google/zxing/Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;->f$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;->f$1:Lcom/google/zxing/Result;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->lambda$handleResult$9(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lcom/google/zxing/Result;)V

    return-void
.end method
