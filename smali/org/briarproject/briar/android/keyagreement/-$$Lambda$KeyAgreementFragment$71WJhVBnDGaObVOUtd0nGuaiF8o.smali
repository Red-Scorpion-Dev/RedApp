.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;->f$0:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;->f$1:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;->f$0:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;->f$1:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->lambda$startListening$0(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;)V

    return-void
.end method
