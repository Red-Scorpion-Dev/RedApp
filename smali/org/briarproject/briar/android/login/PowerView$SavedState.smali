.class Lorg/briarproject/briar/android/login/PowerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PowerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/login/PowerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/briarproject/briar/android/login/PowerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lorg/briarproject/briar/android/login/PowerView$SavedState$1;

    invoke-direct {v0}, Lorg/briarproject/briar/android/login/PowerView$SavedState$1;-><init>()V

    sput-object v0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 136
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->value:[Z

    .line 137
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->value:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/briarproject/briar/android/login/PowerView$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/login/PowerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 129
    new-array p1, p1, [Z

    const/4 v0, 0x0

    aput-boolean v0, p1, v0

    iput-object p1, p0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->value:[Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lorg/briarproject/briar/android/login/PowerView$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/login/PowerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/login/PowerView$SavedState;)[Z
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->value:[Z

    return-object p0
.end method

.method static synthetic access$102(Lorg/briarproject/briar/android/login/PowerView$SavedState;[Z)[Z
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->value:[Z

    return-object p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    iget-object p2, p0, Lorg/briarproject/briar/android/login/PowerView$SavedState;->value:[Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
