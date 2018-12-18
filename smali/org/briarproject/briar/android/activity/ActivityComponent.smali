.class public interface abstract Lorg/briarproject/briar/android/activity/ActivityComponent;
.super Ljava/lang/Object;
.source "ActivityComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    dependencies = {
        Lorg/briarproject/briar/android/AndroidComponent;
    }
    modules = {
        Lorg/briarproject/briar/android/activity/ActivityModule;,
        Lorg/briarproject/briar/android/forum/ForumModule;,
        Lorg/briarproject/briar/android/sharing/SharingModule;,
        Lorg/briarproject/briar/android/blog/BlogModule;,
        Lorg/briarproject/briar/android/contact/ContactModule;,
        Lorg/briarproject/briar/android/privategroup/list/GroupListModule;,
        Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;,
        Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;,
        Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;,
        Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;,
        Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;
    }
.end annotation

.annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
.end annotation


# virtual methods
.method public abstract activity()Landroid/app/Activity;
.end method

.method public abstract inject(Lorg/briarproject/briar/android/StartupFailureActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/BlogActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/BlogFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/BlogPostFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/FeedFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/FeedPostFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/ReblogActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/ReblogFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/contact/ContactListFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/forum/ForumActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/forum/ForumListFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/introduction/IntroductionActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/keyagreement/IntroFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/AuthorNameFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/DozeFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/PasswordActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/PasswordFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/SetupActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/UnlockActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/panic/PanicPreferencesActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/settings/SettingsActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ShareBlogActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ShareBlogMessageFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ShareForumActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ShareForumFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/test/TestDataActivity;)V
.end method
