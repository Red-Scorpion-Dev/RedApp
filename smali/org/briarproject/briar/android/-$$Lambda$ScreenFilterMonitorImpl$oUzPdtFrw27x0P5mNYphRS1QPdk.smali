.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;

    invoke-direct {v0}, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;-><init>()V

    sput-object v0, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;->INSTANCE:Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;

    check-cast p2, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->lambda$getApps$0(Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;)I

    move-result p1

    return p1
.end method
