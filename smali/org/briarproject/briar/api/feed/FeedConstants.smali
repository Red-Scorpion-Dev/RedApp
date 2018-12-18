.class public interface abstract Lorg/briarproject/briar/api/feed/FeedConstants;
.super Ljava/lang/Object;
.source "FeedConstants.java"


# static fields
.field public static final FETCH_DELAY_INITIAL:I = 0x1

.field public static final FETCH_INTERVAL:I = 0x1e

.field public static final FETCH_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final KEY_FEEDS:Ljava/lang/String; = "feeds"

.field public static final KEY_FEED_ADDED:Ljava/lang/String; = "feedAdded"

.field public static final KEY_FEED_AUTHOR:Ljava/lang/String; = "feedAuthor"

.field public static final KEY_FEED_DESC:Ljava/lang/String; = "feedDesc"

.field public static final KEY_FEED_LAST_ENTRY:Ljava/lang/String; = "feedLastEntryTime"

.field public static final KEY_FEED_PRIVATE_KEY:Ljava/lang/String; = "feedPrivateKey"

.field public static final KEY_FEED_RSS_AUTHOR:Ljava/lang/String; = "feedRssAuthor"

.field public static final KEY_FEED_UPDATED:Ljava/lang/String; = "feedUpdated"

.field public static final KEY_FEED_URL:Ljava/lang/String; = "feedURL"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/briarproject/briar/api/feed/FeedConstants;->FETCH_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
