.class public Lorg/briarproject/briar/android/sharing/ShareBlogFragment;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;
.source "ShareBlogFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.sharing.ShareBlogFragment"


# instance fields
.field controller:Lorg/briarproject/briar/android/sharing/ShareBlogController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/sharing/ShareBlogFragment;
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "briar.GROUP_ID"

    .line 28
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 29
    new-instance p0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;

    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;-><init>()V

    .line 30
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected getController()Lorg/briarproject/briar/android/contactselection/ContactSelectorController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/contactselection/ContactSelectorController<",
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;->controller:Lorg/briarproject/briar/android/sharing/ShareBlogController;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 36
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)V

    return-void
.end method
