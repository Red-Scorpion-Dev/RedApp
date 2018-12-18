.class public final synthetic Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/Contact;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/contact/Contact;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$0:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$1:Lorg/briarproject/bramble/api/contact/Contact;

    iput-object p3, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$2:Lorg/briarproject/bramble/api/contact/Contact;

    iput-boolean p4, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$0:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$1:Lorg/briarproject/bramble/api/contact/Contact;

    iget-object v2, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$2:Lorg/briarproject/bramble/api/contact/Contact;

    iget-boolean v3, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->lambda$setUpViews$1(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Z)V

    return-void
.end method
