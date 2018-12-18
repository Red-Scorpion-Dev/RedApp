.class public Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;
.super Ljava/lang/Object;
.source "ScreenFilterMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetails"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;->packageName:Ljava/lang/String;

    return-void
.end method
