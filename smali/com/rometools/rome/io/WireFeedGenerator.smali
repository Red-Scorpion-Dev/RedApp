.class public interface abstract Lcom/rometools/rome/io/WireFeedGenerator;
.super Ljava/lang/Object;
.source "WireFeedGenerator.java"


# virtual methods
.method public abstract generate(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method
