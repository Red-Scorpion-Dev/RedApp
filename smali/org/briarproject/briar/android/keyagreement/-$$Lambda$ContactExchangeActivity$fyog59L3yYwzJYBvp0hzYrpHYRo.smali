.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;->f$0:Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;->f$1:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;->f$0:Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeActivity$fyog59L3yYwzJYBvp0hzYrpHYRo;->f$1:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;->lambda$startContactExchange$0(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V

    return-void
.end method
