.class public Lcom/rometools/rome/feed/synd/impl/ConverterForRSS091Netscape;
.super Lcom/rometools/rome/feed/synd/impl/ConverterForRSS091Userland;
.source "ConverterForRSS091Netscape.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.91N"

    .line 22
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS091Netscape;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS091Userland;-><init>(Ljava/lang/String;)V

    return-void
.end method
