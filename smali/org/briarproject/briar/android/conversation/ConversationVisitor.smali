.class Lorg/briarproject/briar/android/conversation/ConversationVisitor;
.super Ljava/lang/Object;
.source "ConversationVisitor.java"

# interfaces
.implements Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor<",
        "Lorg/briarproject/briar/android/conversation/ConversationItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactName:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private final textCache:Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;Landroid/arch/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->textCache:Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;

    .line 42
    iput-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitBlogInvitationRequest(Lorg/briarproject/briar/api/blog/BlogInvitationRequest;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitBlogInvitationRequest(Lorg/briarproject/briar/api/blog/BlogInvitationRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitBlogInvitationRequest(Lorg/briarproject/briar/api/blog/BlogInvitationRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 6

    .line 65
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogInvitationRequest;->isLocal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f11004f

    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogInvitationRequest;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v2}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 66
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f11004e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 73
    invoke-virtual {v5}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogInvitationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 71
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    const v2, 0x7f0c0062

    sget-object v3, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->BLOG:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1
.end method

.method public bridge synthetic visitBlogInvitationResponse(Lorg/briarproject/briar/api/blog/BlogInvitationResponse;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitBlogInvitationResponse(Lorg/briarproject/briar/api/blog/BlogInvitationResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitBlogInvitationResponse(Lorg/briarproject/briar/api/blog/BlogInvitationResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 5

    .line 82
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f110053

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 87
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 85
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f110055

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 91
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 89
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1

    .line 97
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f110052

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 100
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 98
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f110054

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 104
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 102
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_1
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0060

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1
.end method

.method public bridge synthetic visitForumInvitationRequest(Lorg/briarproject/briar/api/forum/ForumInvitationRequest;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitForumInvitationRequest(Lorg/briarproject/briar/api/forum/ForumInvitationRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitForumInvitationRequest(Lorg/briarproject/briar/api/forum/ForumInvitationRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 6

    .line 114
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumInvitationRequest;->isLocal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f1100b2

    new-array v3, v3, [Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumInvitationRequest;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v2}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 115
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f1100ad

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 122
    invoke-virtual {v5}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumInvitationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 120
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    const v2, 0x7f0c0062

    sget-object v3, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->FORUM:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1
.end method

.method public bridge synthetic visitForumInvitationResponse(Lorg/briarproject/briar/api/forum/ForumInvitationResponse;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitForumInvitationResponse(Lorg/briarproject/briar/api/forum/ForumInvitationResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitForumInvitationResponse(Lorg/briarproject/briar/api/forum/ForumInvitationResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 5

    .line 131
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumInvitationResponse;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100af

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 136
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 134
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100b1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 140
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 138
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1

    .line 146
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100ae

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 149
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 147
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100b0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 153
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 151
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_1
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0060

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1
.end method

.method public bridge synthetic visitGroupInvitationRequest(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitGroupInvitationRequest(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitGroupInvitationRequest(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 6

    .line 163
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;->isLocal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f1100d1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 166
    invoke-virtual {v5}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f1100d0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 172
    invoke-virtual {v5}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 170
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    const v2, 0x7f0c0062

    sget-object v3, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->GROUP:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1
.end method

.method public bridge synthetic visitGroupInvitationResponse(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitGroupInvitationResponse(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitGroupInvitationResponse(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 5

    .line 181
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100d4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 186
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 184
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100d6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 190
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 188
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1

    .line 196
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100d3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 199
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 197
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v3, 0x7f1100d5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 203
    invoke-virtual {v4}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 201
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_1
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0060

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1
.end method

.method public bridge synthetic visitIntroductionRequest(Lorg/briarproject/briar/api/introduction/IntroductionRequest;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitIntroductionRequest(Lorg/briarproject/briar/api/introduction/IntroductionRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitIntroductionRequest(Lorg/briarproject/briar/api/introduction/IntroductionRequest;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 7

    .line 212
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionRequest;->getNameable()Lorg/briarproject/bramble/api/Nameable;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionRequest;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionRequest;->isLocal()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f1100fd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 215
    invoke-virtual {v6}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v0, v4, v2

    .line 214
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1

    .line 219
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f1100fc

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 220
    invoke-virtual {v6}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v0, v4, v2

    .line 219
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    const v2, 0x7f0c0062

    sget-object v3, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->INTRODUCTION:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    return-object v1
.end method

.method public bridge synthetic visitIntroductionResponse(Lorg/briarproject/briar/api/introduction/IntroductionResponse;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitIntroductionResponse(Lorg/briarproject/briar/api/introduction/IntroductionResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitIntroductionResponse(Lorg/briarproject/briar/api/introduction/IntroductionResponse;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 7

    .line 230
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->getIntroducedAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->getIntroducedAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->isLocal()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->wasAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f1100ff

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f110100

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 238
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v4, 0x7f110103

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0061

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1

    .line 250
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->wasAccepted()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f1100fe

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 253
    invoke-virtual {v6}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v0, v4, v3

    .line 251
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {p1}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->isIntroducer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f110101

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 258
    invoke-virtual {v6}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v0, v4, v3

    .line 256
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 261
    :cond_3
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->ctx:Landroid/content/Context;

    const v5, 0x7f110102

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 263
    invoke-virtual {v6}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v0, v4, v3

    .line 261
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_1
    new-instance v1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    const v2, 0x7f0c0060

    invoke-direct {v1, v2, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V

    return-object v1
.end method

.method public bridge synthetic visitPrivateMessageHeader(Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->visitPrivateMessageHeader(Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;)Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object p1

    return-object p1
.end method

.method public visitPrivateMessageHeader(Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;)Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 2

    .line 48
    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;

    const v1, 0x7f0c005f

    invoke-direct {v0, v1, p1}, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;-><init>(ILorg/briarproject/briar/api/messaging/PrivateMessageHeader;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;

    const v1, 0x7f0c005e

    invoke-direct {v0, v1, p1}, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;-><init>(ILorg/briarproject/briar/api/messaging/PrivateMessageHeader;)V

    .line 55
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationVisitor;->textCache:Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;->getText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->setText(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
