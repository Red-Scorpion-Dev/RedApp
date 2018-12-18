.class public Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;
.super Lorg/briarproject/briar/android/sharing/BaseMessageFragment;
.source "CreateGroupMessageFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.privategroup.creation.CreateGroupMessageFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getButtonText()I
    .locals 1

    const v0, 0x7f1100c3

    return v0
.end method

.method protected getHintText()I
    .locals 1

    const v0, 0x7f1100bc

    return v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 33
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;)V

    return-void
.end method
