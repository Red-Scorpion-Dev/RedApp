.class public Lorg/briarproject/briar/android/privategroup/VisibilityHelper;
.super Ljava/lang/Object;
.source "VisibilityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVisibilityIcon(Lorg/briarproject/briar/api/privategroup/Visibility;)I
    .locals 1

    .line 34
    sget-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    if-ne p0, v0, :cond_0

    const p0, 0x7f080909

    return p0

    :cond_0
    const p0, 0x7f080908

    return p0
.end method

.method public static getVisibilityString(Landroid/content/Context;Lorg/briarproject/briar/api/privategroup/Visibility;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 15
    sget-object v0, Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;->$SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/Visibility;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown visibility"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x7f1100e7

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1100e9

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1100ea

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1100e8

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
