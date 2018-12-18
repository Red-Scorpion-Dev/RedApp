.class final Lorg/briarproject/briar/android/login/PowerView$SavedState$1;
.super Ljava/lang/Object;
.source "PowerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/login/PowerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/briarproject/briar/android/login/PowerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PowerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/briarproject/briar/android/login/PowerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/briarproject/briar/android/login/PowerView$SavedState;
    .locals 2

    .line 149
    new-instance v0, Lorg/briarproject/briar/android/login/PowerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/briarproject/briar/android/login/PowerView$SavedState;-><init>(Landroid/os/Parcel;Lorg/briarproject/briar/android/login/PowerView$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PowerView$SavedState$1;->newArray(I)[Lorg/briarproject/briar/android/login/PowerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/briarproject/briar/android/login/PowerView$SavedState;
    .locals 0

    .line 153
    new-array p1, p1, [Lorg/briarproject/briar/android/login/PowerView$SavedState;

    return-object p1
.end method
