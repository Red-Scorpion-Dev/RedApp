.class interface abstract Lorg/briarproject/briar/feed/FeedFactory;
.super Ljava/lang/Object;
.source "FeedFactory.java"


# virtual methods
.method public abstract createFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lorg/briarproject/briar/api/feed/Feed;
.end method

.method public abstract createFeed(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/feed/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract createFeed(Lorg/briarproject/briar/api/feed/Feed;Lcom/rometools/rome/feed/synd/SyndFeed;J)Lorg/briarproject/briar/api/feed/Feed;
.end method

.method public abstract feedToBdfDictionary(Lorg/briarproject/briar/api/feed/Feed;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method
