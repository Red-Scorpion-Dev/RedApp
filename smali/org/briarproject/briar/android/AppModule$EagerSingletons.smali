.class Lorg/briarproject/briar/android/AppModule$EagerSingletons;
.super Ljava/lang/Object;
.source "AppModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/AppModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EagerSingletons"
.end annotation


# instance fields
.field androidNotificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field dozeWatchdog:Lorg/briarproject/briar/api/android/DozeWatchdog;

.field networkUsageLogger:Lorg/briarproject/briar/android/NetworkUsageLogger;

.field recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
