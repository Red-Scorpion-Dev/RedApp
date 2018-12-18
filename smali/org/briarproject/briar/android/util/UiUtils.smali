.class public Lorg/briarproject/briar/android/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final GREY_OUT:F = 0.5f

.field public static final MIN_DATE_RESOLUTION:J = 0xea60L

.field public static final TEASER_LENGTH:I = 0x140


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterPressed(ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const p1, 0x7f110145

    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/32 v2, 0x240c8400

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-wide/32 v8, 0xea60

    const-wide/32 v10, 0x240c8400

    const v12, 0x54010

    move-object v5, p0

    move-wide v6, p1

    .line 111
    invoke-static/range {v5 .. v12}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const v6, 0x54010

    move-wide v0, p1

    .line 115
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvatarTransitionName(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBulbTransitionName(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {p0}, Lorg/briarproject/bramble/api/contact/Contact;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 85
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDaysUntilExpiry()I
    .locals 4

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    sget-wide v2, Lorg/briarproject/briar/android/TestingConstants;->EXPIRY_DATE:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    div-long/2addr v2, v0

    const-wide/16 v0, 0x18

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public static getDozeWhitelistingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BatteryLife"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getGoToSettingsListener(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 211
    new-instance v0, Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$Yw4sCrtlZm6F2EKgELQ6InNmiRg;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$Yw4sCrtlZm6F2EKgELQ6InNmiRg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 0

    .line 150
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static getTeaser(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 127
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const/16 v1, 0x140

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    .line 132
    invoke-interface {p1, v2, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const p1, 0x7f110099

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f110189

    .line 137
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f060034

    .line 139
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 140
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result p0

    const/16 v3, 0x21

    invoke-interface {v1, p1, v2, p0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String is shorter than TEASER_LENGTH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasKeyguardLock(Landroid/content/Context;)Z
    .locals 3

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "keyguard"

    .line 293
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-nez p0, :cond_1

    return v1

    .line 297
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 298
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static hasScreenLock(Landroid/content/Context;)Z
    .locals 1

    .line 287
    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->hasKeyguardLock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->hasUsableFingerprint(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static hasUsableFingerprint(Landroid/content/Context;)Z
    .locals 3

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSamsung7()Z
    .locals 2

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getGoToSettingsListener$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 212
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 213
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 214
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "package:org.briarproject.briar.android"

    .line 215
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 216
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$showOnboardingDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$triggerFeedback$2()V
    .locals 3

    .line 309
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/util/UserFeedback;

    invoke-direct {v1}, Lorg/briarproject/briar/android/util/UserFeedback;-><init>()V

    const/4 v2, 0x0

    .line 310
    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static makeLinksClickable(Landroid/widget/TextView;Landroid/support/v4/app/FragmentManager;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 158
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 159
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 160
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 161
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 163
    new-instance v5, Lorg/briarproject/briar/android/util/UiUtils$1;

    invoke-direct {v5, v8, p1}, Lorg/briarproject/briar/android/util/UiUtils$1;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 170
    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {}, Lorg/briarproject/briar/android/view/ArticleMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static needsDozeWhitelisting(Landroid/content/Context;)Z
    .locals 2

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "power"

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0, p0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 233
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static observeOnce(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/briarproject/briar/android/util/UiUtils$3;

    invoke-direct {v0, p2, p0}, Lorg/briarproject/briar/android/util/UiUtils$3;-><init>(Landroid/arch/lifecycle/Observer;Landroid/arch/lifecycle/LiveData;)V

    invoke-virtual {p0, p1, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public static onSingleLinkClick(Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 6

    .line 182
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 183
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 186
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 187
    aget-object v1, v1, v3

    .line 188
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 189
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 190
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 191
    new-instance v1, Lorg/briarproject/briar/android/util/UiUtils$2;

    invoke-direct {v1, p1}, Lorg/briarproject/briar/android/util/UiUtils$2;-><init>(Ljava/lang/Runnable;)V

    add-int/2addr v2, v4

    .line 197
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance p1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {p1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static resolveAttribute(Landroid/content/Context;I)I
    .locals 2

    .line 274
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 276
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static resolveColorAttribute(Landroid/content/Context;I)I
    .locals 0

    .line 282
    invoke-static {p0, p1}, Lorg/briarproject/briar/android/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result p1

    .line 283
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setFilterTouchesWhenObscured(Landroid/view/View;Z)V
    .locals 1

    .line 251
    invoke-virtual {p0, p1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getFilterTouchesWhenObscured()Z

    move-result v0

    if-eq v0, p1, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    :cond_0
    return-void
.end method

.method public static setTheme(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f11017e

    .line 259
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 260
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f11017c

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    .line 263
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f11017a

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 266
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f110180

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    .line 269
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static showOnboardingDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 222
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200dd

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$d6q7-sJQjs7OZcJPFzsYK0KKoX4;->INSTANCE:Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$d6q7-sJQjs7OZcJPFzsYK0KKoX4;

    const v0, 0x7f1100bf

    .line 224
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public static triggerFeedback(Lorg/briarproject/bramble/api/system/AndroidExecutor;)V
    .locals 1

    .line 308
    sget-object v0, Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$BlNOaU_HCizEd1h5gKKH4fKuhHY;->INSTANCE:Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$BlNOaU_HCizEd1h5gKKH4fKuhHY;

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method
