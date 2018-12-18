.class public final synthetic Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;

    invoke-direct {v0}, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;-><init>()V

    sput-object v0, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;->INSTANCE:Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;

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

    check-cast p1, Lcom/rometools/rome/feed/synd/SyndEntry;

    check-cast p2, Lcom/rometools/rome/feed/synd/SyndEntry;

    invoke-static {p1, p2}, Lorg/briarproject/briar/feed/FeedManagerImpl;->lambda$getEntryComparator$1(Lcom/rometools/rome/feed/synd/SyndEntry;Lcom/rometools/rome/feed/synd/SyndEntry;)I

    move-result p1

    return p1
.end method
