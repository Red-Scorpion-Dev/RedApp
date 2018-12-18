.class Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;
.super Ljava/lang/Object;
.source "NavDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transport"
.end annotation


# instance fields
.field private enabled:Z

.field private iconId:I

.field private id:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private textId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 0

    .line 456
    iget-object p0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object p0
.end method

.method static synthetic access$302(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 0

    .line 456
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object p1
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Z
    .locals 0

    .line 456
    iget-boolean p0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->enabled:Z

    return p0
.end method

.method static synthetic access$402(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Z)Z
    .locals 0

    .line 456
    iput-boolean p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->enabled:Z

    return p1
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)I
    .locals 0

    .line 456
    iget p0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->iconId:I

    return p0
.end method

.method static synthetic access$502(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I
    .locals 0

    .line 456
    iput p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->iconId:I

    return p1
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)I
    .locals 0

    .line 456
    iget p0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->textId:I

    return p0
.end method

.method static synthetic access$602(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I
    .locals 0

    .line 456
    iput p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->textId:I

    return p1
.end method
