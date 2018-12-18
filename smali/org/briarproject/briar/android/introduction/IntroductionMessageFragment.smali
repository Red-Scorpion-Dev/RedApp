.class public Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "IntroductionMessageFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final CONTACT_ID_1:Ljava/lang/String; = "contact1"

.field private static final CONTACT_ID_2:Ljava/lang/String; = "contact2"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.introduction.IntroductionMessageFragment"


# instance fields
.field private contact1:Lorg/briarproject/bramble/api/contact/Contact;

.field private contact2:Lorg/briarproject/bramble/api/contact/Contact;

.field protected volatile contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

.field protected volatile introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

.field private ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private introductionError()V
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    new-instance v1, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$DOLrKBT6ZcYXCffhyevn2MtZdZY;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$DOLrKBT6ZcYXCffhyevn2MtZdZY;-><init>(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$introductionError$3(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    const v1, 0x7f1100f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$makeIntroduction$2(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;)V
    .locals 6

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 208
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/api/introduction/IntroductionManager;->makeIntroduction(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    sget-object p2, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 211
    invoke-direct {p0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionError()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$prepareToSetUpViews$0(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;II)V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    new-instance v1, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-direct {v1, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    new-instance v1, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-direct {v1, p2}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    .line 132
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/introduction/IntroductionManager;->canIntroduce(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;)Z

    move-result v0

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->setUpViews(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    sget-object p2, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setUpViews$1(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    .locals 3

    .line 142
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contact1:Lorg/briarproject/bramble/api/contact/Contact;

    .line 143
    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contact2:Lorg/briarproject/bramble/api/contact/Contact;

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v0

    new-instance v1, Lim/delight/android/identicons/IdenticonDrawable;

    .line 147
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lim/delight/android/identicons/IdenticonDrawable;-><init>([B)V

    .line 146
    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$300(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v0

    new-instance v1, Lim/delight/android/identicons/IdenticonDrawable;

    .line 149
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lim/delight/android/identicons/IdenticonDrawable;-><init>([B)V

    .line 148
    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$400(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$500(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$600(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 160
    iget-object p3, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p3}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/briarproject/briar/android/view/TextInputView;->setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V

    .line 163
    iget-object p3, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p3}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$700(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object p2, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p2}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 166
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->showSoftKeyboard()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p3, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p3}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$700(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private makeIntroduction(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    new-instance v1, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$dQ8mr52a36vHCNoUX78XwsSvC-w;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$dQ8mr52a36vHCNoUX78XwsSvC-w;-><init>(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstance(II)Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contact1"

    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "contact2"

    .line 68
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    new-instance p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

    invoke-direct {p0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private prepareToSetUpViews(II)V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    new-instance v1, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$OHyaGLglVRXKnFyJgOvF3MRGgnU;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$OHyaGLglVRXKnFyJgOvF3MRGgnU;-><init>(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;II)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setUpViews(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    new-instance v1, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/briarproject/briar/android/introduction/-$$Lambda$IntroductionMessageFragment$m6ohywAWVEUipyD_ggM_9Lw5plQ;-><init>(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Z)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 122
    sget-object v0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 77
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    check-cast p1, Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 91
    iget-object p3, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    invoke-virtual {p3}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f1100f6

    .line 93
    invoke-virtual {p3, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_0
    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;-><init>(Landroid/view/View;Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$1;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    .line 100
    iget-object p2, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p2}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 182
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 178
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 179
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSendClick(Ljava/lang/String;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 191
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7c00

    .line 193
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->truncateUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 194
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contact1:Lorg/briarproject/bramble/api/contact/Contact;

    iget-object v1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contact2:Lorg/briarproject/bramble/api/contact/Contact;

    invoke-direct {p0, v0, v1, p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->makeIntroduction(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->ui:Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 198
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->setResult(I)V

    .line 199
    iget-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionActivity:Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 107
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 110
    invoke-virtual {p0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contact1"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "contact2"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 117
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->prepareToSetUpViews(II)V

    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "You need to use newInstance() to instantiate"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
