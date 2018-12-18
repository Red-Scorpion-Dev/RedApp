.class public final Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerActivityComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/activity/DaggerActivityComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private activityModule:Lorg/briarproject/briar/android/activity/ActivityModule;

.field private androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

.field private blogModule:Lorg/briarproject/briar/android/blog/BlogModule;

.field private createGroupModule:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

.field private forumModule:Lorg/briarproject/briar/android/forum/ForumModule;

.field private groupConversationModule:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

.field private groupInvitationModule:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

.field private groupListModule:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

.field private groupMemberModule:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

.field private groupRevealModule:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

.field private sharingModule:Lorg/briarproject/briar/android/sharing/SharingModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$1;)V
    .locals 0

    .line 2051
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->activityModule:Lorg/briarproject/briar/android/activity/ActivityModule;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/forum/ForumModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->forumModule:Lorg/briarproject/briar/android/forum/ForumModule;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/list/GroupListModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupListModule:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/sharing/SharingModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->sharingModule:Lorg/briarproject/briar/android/sharing/SharingModule;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->createGroupModule:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/blog/BlogModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->blogModule:Lorg/briarproject/briar/android/blog/BlogModule;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupConversationModule:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupMemberModule:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    return-object p0
.end method

.method static synthetic access$900(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;
    .locals 0

    .line 2051
    iget-object p0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupRevealModule:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    return-object p0
.end method


# virtual methods
.method public activityModule(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2114
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/activity/ActivityModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->activityModule:Lorg/briarproject/briar/android/activity/ActivityModule;

    return-object p0
.end method

.method public androidComponent(Lorg/briarproject/briar/android/AndroidComponent;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2174
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/AndroidComponent;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    return-object p0
.end method

.method public blogModule(Lorg/briarproject/briar/android/blog/BlogModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2129
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/blog/BlogModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->blogModule:Lorg/briarproject/briar/android/blog/BlogModule;

    return-object p0
.end method

.method public build()Lorg/briarproject/briar/android/activity/ActivityComponent;
    .locals 3

    .line 2077
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->activityModule:Lorg/briarproject/briar/android/activity/ActivityModule;

    if-eqz v0, :cond_a

    .line 2080
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->sharingModule:Lorg/briarproject/briar/android/sharing/SharingModule;

    if-nez v0, :cond_0

    .line 2081
    new-instance v0, Lorg/briarproject/briar/android/sharing/SharingModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/sharing/SharingModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->sharingModule:Lorg/briarproject/briar/android/sharing/SharingModule;

    .line 2083
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->createGroupModule:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    if-nez v0, :cond_1

    .line 2084
    new-instance v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->createGroupModule:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    .line 2086
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->blogModule:Lorg/briarproject/briar/android/blog/BlogModule;

    if-nez v0, :cond_2

    .line 2087
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/blog/BlogModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->blogModule:Lorg/briarproject/briar/android/blog/BlogModule;

    .line 2089
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupConversationModule:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    if-nez v0, :cond_3

    .line 2090
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupConversationModule:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    .line 2092
    :cond_3
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    if-nez v0, :cond_4

    .line 2093
    new-instance v0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    .line 2095
    :cond_4
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupMemberModule:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    if-nez v0, :cond_5

    .line 2096
    new-instance v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupMemberModule:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    .line 2098
    :cond_5
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupRevealModule:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    if-nez v0, :cond_6

    .line 2099
    new-instance v0, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupRevealModule:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    .line 2101
    :cond_6
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->forumModule:Lorg/briarproject/briar/android/forum/ForumModule;

    if-nez v0, :cond_7

    .line 2102
    new-instance v0, Lorg/briarproject/briar/android/forum/ForumModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/forum/ForumModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->forumModule:Lorg/briarproject/briar/android/forum/ForumModule;

    .line 2104
    :cond_7
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupListModule:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    if-nez v0, :cond_8

    .line 2105
    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupListModule:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    .line 2107
    :cond_8
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    if-eqz v0, :cond_9

    .line 2110
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;-><init>(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;Lorg/briarproject/briar/android/activity/DaggerActivityComponent$1;)V

    return-object v0

    .line 2108
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/briarproject/briar/android/AndroidComponent;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/briarproject/briar/android/activity/ActivityModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contactModule(Lorg/briarproject/briar/android/contact/ContactModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2139
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public createGroupModule(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2149
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->createGroupModule:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    return-object p0
.end method

.method public forumModule(Lorg/briarproject/briar/android/forum/ForumModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2119
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/forum/ForumModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->forumModule:Lorg/briarproject/briar/android/forum/ForumModule;

    return-object p0
.end method

.method public groupConversationModule(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2159
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupConversationModule:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    return-object p0
.end method

.method public groupInvitationModule(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2154
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    return-object p0
.end method

.method public groupListModule(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2144
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupListModule:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    return-object p0
.end method

.method public groupMemberModule(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2164
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupMemberModule:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    return-object p0
.end method

.method public groupRevealModule(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2169
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->groupRevealModule:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    return-object p0
.end method

.method public sharingModule(Lorg/briarproject/briar/android/sharing/SharingModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 0

    .line 2124
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/sharing/SharingModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->sharingModule:Lorg/briarproject/briar/android/sharing/SharingModule;

    return-object p0
.end method
