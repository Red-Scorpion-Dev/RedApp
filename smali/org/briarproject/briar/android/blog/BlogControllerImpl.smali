.class Lorg/briarproject/briar/android/blog/BlogControllerImpl;
.super Lorg/briarproject/briar/android/blog/BaseControllerImpl;
.source "BlogControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/blog/BlogController;
.implements Lorg/briarproject/briar/android/controller/ActivityLifecycleController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

.field private volatile groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private volatile listener:Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/blog/BlogManager;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 63
    iput-object p7, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    return-void
.end method

.method public static synthetic lambda$deleteBlog$3(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 4

    .line 179
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 180
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v2, v3}, Lorg/briarproject/briar/api/blog/BlogManager;->getBlog(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v3, v2}, Lorg/briarproject/briar/api/blog/BlogManager;->removeBlog(Lorg/briarproject/briar/api/blog/Blog;)V

    .line 182
    sget-object v2, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Removing blog"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 183
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    sget-object v1, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 186
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadBlog$2(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 6

    .line 159
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 160
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v3, v4}, Lorg/briarproject/briar/api/blog/BlogManager;->getBlog(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v3

    .line 162
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-virtual {v3}, Lorg/briarproject/briar/api/blog/Blog;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 163
    iget-object v4, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v4, v3}, Lorg/briarproject/briar/api/blog/BlogManager;->canBeRemoved(Lorg/briarproject/briar/api/blog/Blog;)Z

    move-result v4

    .line 164
    new-instance v5, Lorg/briarproject/briar/android/blog/BlogItem;

    invoke-direct {v5, v3, v2, v4}, Lorg/briarproject/briar/android/blog/BlogItem;-><init>(Lorg/briarproject/briar/api/blog/Blog;ZZ)V

    .line 165
    sget-object v2, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Loading blog"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 166
    invoke-interface {p1, v5}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    sget-object v1, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 169
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadSharingContacts$4(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 198
    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/blog/BlogSharingManager;->getSharedWith(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    .line 200
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 205
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onBlogInvitationAccepted$0(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;->onBlogInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public static synthetic lambda$onBlogLeft$1(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;->onBlogLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method private onBlogInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$O3vpNzfU8HqJOIFH3JwtncUe6kI;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$O3vpNzfU8HqJOIFH3JwtncUe6kI;-><init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onBlogLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$gNh3QeVP0wDZoKYejUHu6HqwTbs;-><init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deleteBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Void;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;-><init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_4

    .line 101
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    .line 103
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    sget-object v0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Blog post added"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->isLocal()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    goto :goto_0

    .line 107
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;

    .line 110
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;->getMessageHeader()Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;

    .line 111
    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Blog invitation accepted"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->onBlogInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 115
    :cond_1
    instance-of v0, p1, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;

    if-eqz v0, :cond_2

    .line 116
    check-cast p1, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;

    .line 117
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Blog left by contact"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->onBlogLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 121
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    if-eqz v0, :cond_3

    .line 122
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    .line 123
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 124
    sget-object p1, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Blog removed"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->onBlogRemoved()V

    :cond_3
    :goto_0
    return-void

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public loadBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/blog/BlogItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Abb2xRjgje8zXVunp4M1e109JoY;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Abb2xRjgje8zXVunp4M1e109JoY;-><init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public loadBlogPost(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p0, v0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->loadBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public loadBlogPosts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->loadBlogPosts(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public loadSharingContacts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$THWEmyweyzz0l_fL_DHVJ3hNtyo;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$THWEmyweyzz0l_fL_DHVJ3hNtyo;-><init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method public onActivityStart()V
    .locals 2

    .line 72
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->onStart()V

    .line 73
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->blockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearBlogPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .line 79
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->onStop()V

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->unblockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public setBlogSharingListener(Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->setBlogListener(Lorg/briarproject/briar/android/blog/BaseController$BlogListener;)V

    .line 95
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;

    return-void
.end method

.method public setGroupId(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method
