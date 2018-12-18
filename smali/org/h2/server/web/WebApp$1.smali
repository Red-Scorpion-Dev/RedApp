.class Lorg/h2/server/web/WebApp$1;
.super Ljava/lang/Object;
.source "WebApp.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/server/web/WebApp;->query()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Lorg/h2/server/web/WebApp;

.field final synthetic val$conn:Ljava/sql/Connection;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/h2/server/web/WebApp;Ljava/util/ArrayList;Ljava/sql/Connection;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lorg/h2/server/web/WebApp$1;->this$0:Lorg/h2/server/web/WebApp;

    iput-object p2, p0, Lorg/h2/server/web/WebApp$1;->val$list:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/h2/server/web/WebApp$1;->val$conn:Ljava/sql/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1014
    iget v0, p0, Lorg/h2/server/web/WebApp$1;->i:I

    iget-object v1, p0, Lorg/h2/server/web/WebApp$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1010
    invoke-virtual {p0}, Lorg/h2/server/web/WebApp$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 7

    .line 1018
    iget-object v0, p0, Lorg/h2/server/web/WebApp$1;->val$list:Ljava/util/ArrayList;

    iget v1, p0, Lorg/h2/server/web/WebApp$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/server/web/WebApp$1;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1019
    iget v0, p0, Lorg/h2/server/web/WebApp$1;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/h2/server/web/WebApp$1;->i:I

    iget-object v2, p0, Lorg/h2/server/web/WebApp$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    iget-object v2, p0, Lorg/h2/server/web/WebApp$1;->this$0:Lorg/h2/server/web/WebApp;

    iget-object v4, p0, Lorg/h2/server/web/WebApp$1;->val$conn:Ljava/sql/Connection;

    iget v5, p0, Lorg/h2/server/web/WebApp$1;->i:I

    sub-int/2addr v5, v1

    iget-object v1, p0, Lorg/h2/server/web/WebApp$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x2

    move-object v1, v2

    move-object v2, v4

    move v4, v5

    move v5, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/h2/server/web/WebApp;->query(Ljava/sql/Connection;Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v3
.end method

.method public remove()V
    .locals 1

    .line 1028
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
