.class public Lcom/miui/aod/AODView;
.super Landroid/widget/FrameLayout;
.source "AODView.java"

# interfaces
.implements Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AODView"


# instance fields
.field private m24HourFormat:Z

.field mAnimateInvisible:Ljava/lang/Runnable;

.field private mAnimationListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

.field private mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

.field private mAodStyleController:Lcom/miui/aod/AODStyleController;

.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/util/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstIcon:Lcom/miui/aod/BadgetImageView;

.field private mIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mMissCallNum:I

.field private mNotificationArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPositionController:Lcom/miui/aod/AODUpdatePositionController;

.field private mRegisteredCallLog:Z

.field private mSecondIcon:Lcom/miui/aod/BadgetImageView;

.field protected mShowMissCall:Z

.field private mTableModeContainer:Landroid/view/View;

.field private mThirdIcon:Lcom/miui/aod/BadgetImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/AODView;->mBinders:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/aod/AODView;->mRegisteredCallLog:Z

    new-instance v0, Lcom/miui/aod/AODView$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/AODView$2;-><init>(Lcom/miui/aod/AODView;)V

    iput-object v0, p0, Lcom/miui/aod/AODView;->mAnimationListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    new-instance v0, Lcom/miui/aod/AODView$3;

    invoke-direct {v0, p0}, Lcom/miui/aod/AODView$3;-><init>(Lcom/miui/aod/AODView;)V

    iput-object v0, p0, Lcom/miui/aod/AODView;->mAnimateInvisible:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/aod/AODView$6;

    invoke-direct {v0, p0}, Lcom/miui/aod/AODView$6;-><init>(Lcom/miui/aod/AODView;)V

    iput-object v0, p0, Lcom/miui/aod/AODView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/aod/AODUpdatePositionController;

    invoke-direct {v0, p1}, Lcom/miui/aod/AODUpdatePositionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/aod/AODView;->mPositionController:Lcom/miui/aod/AODUpdatePositionController;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.facebook.mlite"

    const v1, 0x7f0201e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "org.kman.AquaMail"

    const v1, 0x7f0202ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.blackberry.hub"

    const v1, 0x7f0202cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.discord"

    const v1, 0x7f0202d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.google.android.apps.messaging"

    const v1, 0x7f0202d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.jb.gosms"

    const v1, 0x7f0202d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.google.android.apps.tasks"

    const v1, 0x7f0202d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.google.android.talk"

    const v1, 0x7f0202d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.instagram.android"

    const v1, 0x7f0202d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.fsck.k9"

    const v1, 0x7f0202d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.kakao.talk"

    const v1, 0x7f0202d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.calea.echo"

    const v1, 0x7f0202d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.my.mail"

    const v1, 0x7f0202d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.microsoft.office.outlook"

    const v1, 0x7f0202da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "org.thoughtcrime.securesms"

    const v1, 0x7f0202db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.skype.raider"

    const v1, 0x7f0202dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.skype.insiders"

    const v1, 0x7f0202dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.skype.m2"

    const v1, 0x7f0202dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.snapchat.android"

    const v1, 0x7f0202dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.quoord.tapatalkpro.activity"

    const v1, 0x7f0202de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.quoord.tapatalkHD"

    const v1, 0x7f0202de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "org.telegram.messenger"

    const v1, 0x7f0202df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "org.telegram.plus"

    const v1, 0x7f0202df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "org.thunderdog.challegram"

    const v1, 0x7f0202df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.textra"

    const v1, 0x7f0202e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "ch.threema.app"

    const v1, 0x7f0202e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "ch.threema.app.work"

    const v1, 0x7f0202e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.twitter.android"

    const v1, 0x7f0202e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.twitter.android.lite"

    const v1, 0x7f0202e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.viber.voip"

    const v1, 0x7f0202e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.vkontakte.android"

    const v1, 0x7f0202e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "de.web.mobile.android.mail"

    const v1, 0x7f0202e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.whatsapp.w4b"

    const v1, 0x7f0202e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.yahoo.mobile.client.android.mail"

    const v1, 0x7f0202e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.tencent.mm"

    const v1, 0x7f02029d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.tencent.mobileqq"

    const v1, 0x7f02026e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.whatsapp"

    const v1, 0x7f02029e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.facebook.orca"

    const v1, 0x7f0201e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "jp.naver.line.android"

    const v1, 0x7f0201fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.google.android.gm"

    const v1, 0x7f0201eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.android.email"

    const v1, 0x7f0201ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.google.android.calendar"

    const v1, 0x7f0201ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.android.calendar"

    const v1, 0x7f0201d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.android.server.telecom"

    const v1, 0x7f02026b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    const-string v0, "com.android.mms"

    const v1, 0x7f020284

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/aod/AODView;->setForceDarkAllowed(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/AODView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/AODView;->mIconList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/AODView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/AODView;->showAnimate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/aod/AODView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/AODView;->bindNotification(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/aod/AODView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/AODView;->updateNotificationList()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/aod/AODView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/AODView;->handleUpdateIcons()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/aod/AODView;)Lcom/miui/aod/AODUpdatePositionController;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/AODView;->mPositionController:Lcom/miui/aod/AODUpdatePositionController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/aod/AODView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/AODView;->mTableModeContainer:Landroid/view/View;

    return-object p0
.end method

.method private bindNotification(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/util/NotificationController$NotificationData;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f1100cf

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/miui/aod/AODView;->needShowNotification()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/aod/util/NotificationController$NotificationData;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/miui/aod/util/NotificationController$NotificationData;->mTravelDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/miui/aod/util/NotificationController$NotificationData;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f1100d0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object p1, v3, Lcom/miui/aod/util/NotificationController$NotificationData;->mTitle:Ljava/lang/String;

    iget-object v3, v3, Lcom/miui/aod/util/NotificationController$NotificationData;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, p1, v3}, Lcom/miui/aod/widget/CenterImageSpan;->insertIcon(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/drawable/Icon;)V

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private bindView(Lcom/miui/aod/BadgetImageView;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/aod/AODView;->getPkg(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/aod/BadgetImageView;->setVisibility(I)V

    const-string v2, "com.android.server.telecom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/miui/aod/AODView;->mMissCallNum:I

    :cond_1
    const-string v2, "com.android.calendar"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/miui/aod/BadgetImageView;->setBadget(II)V

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p2, 0xff

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1, p0}, Lcom/miui/aod/BadgetImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/miui/aod/BadgetImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private fillMissedCall()V
    .locals 4

    const-string v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "type=3 AND new=1"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lcom/miui/aod/utils/CommonUtils;->isProviderAccess(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/miui/aod/AODView;->addContentProviderBinder(Landroid/net/Uri;)Lcom/miui/aod/util/ContentProviderBinder$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/aod/util/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/miui/aod/util/ContentProviderBinder$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/aod/util/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/miui/aod/util/ContentProviderBinder$Builder;

    :cond_0
    return-void
.end method

.method private getPkg(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleUpdateIcons()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/aod/AODView;->needShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/AODView;->mFirstIcon:Lcom/miui/aod/BadgetImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/AODView;->bindView(Lcom/miui/aod/BadgetImageView;I)V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mSecondIcon:Lcom/miui/aod/BadgetImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/AODView;->bindView(Lcom/miui/aod/BadgetImageView;I)V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mThirdIcon:Lcom/miui/aod/BadgetImageView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/AODView;->bindView(Lcom/miui/aod/BadgetImageView;I)V

    :cond_0
    return-void
.end method

.method private handleUpdateTime()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/AODView;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean p0, p0, Lcom/miui/aod/AODView;->m24HourFormat:Z

    invoke-virtual {v0, p0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    return-void
.end method

.method private makeNormalPanel()V
    .locals 3

    new-instance v0, Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/miui/aod/AODView;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/AODView;->m24HourFormat:Z

    const v0, 0x7f1100ad

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/AODView;->mTableModeContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/aod/AODView;->mTableModeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/aod/AODView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/AODView;->mTableModeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODStyleController;->inflateClockView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/aod/AODView;->needShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1100ca

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/BadgetImageView;

    iput-object v0, p0, Lcom/miui/aod/AODView;->mFirstIcon:Lcom/miui/aod/BadgetImageView;

    const v0, 0x7f1100cb

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/BadgetImageView;

    iput-object v0, p0, Lcom/miui/aod/AODView;->mSecondIcon:Lcom/miui/aod/BadgetImageView;

    const v0, 0x7f1100cc

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/BadgetImageView;

    iput-object v0, p0, Lcom/miui/aod/AODView;->mThirdIcon:Lcom/miui/aod/BadgetImageView;

    :cond_0
    const v0, 0x7f1100ce

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/NotificationAnimationView;

    iput-object v0, p0, Lcom/miui/aod/AODView;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    return-void
.end method

.method private needShowNotification()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->isNotificationSwitchOn()Z

    move-result p0

    return p0
.end method

.method private showAnimate(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodAnimateEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/aod/AODView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAnimate pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/aod/DozeHost;->setNotificationAnimate(Z)V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/DozeHost;->fireAnimateState()V

    iget-object p1, p0, Lcom/miui/aod/AODView;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/AODView;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-virtual {p1}, Lcom/miui/aod/widget/NotificationAnimationView;->stopAnimation()V

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->getSelectedStyleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->createAnimationDrawer(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/AODView;->mAnimationListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    invoke-interface {p1, v0}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;->setAnimationListener(Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;)V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-virtual {v0, p1}, Lcom/miui/aod/widget/NotificationAnimationView;->setAnimationDrawer(Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;)V

    iget-object p0, p0, Lcom/miui/aod/AODView;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->startAnimation()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private updateNotificationList()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/AODView;->mIconList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/AODView;->mIconList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/AODView$4;

    invoke-direct {v1, p0}, Lcom/miui/aod/AODView$4;-><init>(Lcom/miui/aod/AODView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/aod/AODView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/aod/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_1
    new-instance v0, Lcom/miui/aod/AODView$5;

    invoke-direct {v0, p0}, Lcom/miui/aod/AODView$5;-><init>(Lcom/miui/aod/AODView;)V

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Landroid/net/Uri;)Lcom/miui/aod/util/ContentProviderBinder$Builder;
    .locals 2

    new-instance v0, Lcom/miui/aod/util/ContentProviderBinder;

    iget-object v1, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/aod/util/ContentProviderBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/miui/aod/util/ContentProviderBinder;->setQueryCompleteListener(Lcom/miui/aod/util/ContentProviderBinder$QueryCompleteListener;)V

    invoke-virtual {v0, p1}, Lcom/miui/aod/util/ContentProviderBinder;->setUri(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/miui/aod/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/util/ContentProviderBinder$Builder;

    invoke-direct {p0, v0}, Lcom/miui/aod/util/ContentProviderBinder$Builder;-><init>(Lcom/miui/aod/util/ContentProviderBinder;)V

    return-object p0
.end method

.method public clearClockPanelAnimation()V
    .locals 1

    const v0, 0x7f1100c4

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/miui/aod/widget/IAnimatable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/aod/widget/IAnimatable;

    invoke-interface {p0}, Lcom/miui/aod/widget/IAnimatable;->clearAnimationView()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x162

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/Utils;->isShowTemporary(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    const-string p1, "reason_keycode_goto"

    invoke-virtual {p0, v0, p1}, Lcom/miui/aod/DozeHost;->fireAodState(ZLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->notifyKeycodeGoto()V

    :cond_2
    return v0
.end method

.method public handleUpdateView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/AODView;->mPositionController:Lcom/miui/aod/AODUpdatePositionController;

    iget-object v1, p0, Lcom/miui/aod/AODView;->mTableModeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODUpdatePositionController;->updatePosition(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/aod/AODView;->handleUpdateTime()V

    invoke-direct {p0}, Lcom/miui/aod/AODView;->needShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/AODView;->handleUpdateIcons()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/AODView;->mIconList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/aod/AODView;->updateNotificationList()V

    iget-object v0, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/util/NotificationController;->getInstance(Landroid/content/Context;)Lcom/miui/aod/util/NotificationController;

    move-result-object v0

    new-instance v1, Lcom/miui/aod/AODView$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/AODView$1;-><init>(Lcom/miui/aod/AODView;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/util/NotificationController;->setListener(Lcom/miui/aod/util/NotificationController$NotificationChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/aod/AODView;->makeNormalPanel()V

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->handleUpdateView()V

    return-void
.end method

.method public onQueryCompleted(Landroid/net/Uri;I)V
    .locals 1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/aod/AODView;->mShowMissCall:Z

    iput p2, p0, Lcom/miui/aod/AODView;->mMissCallNum:I

    :cond_1
    invoke-direct {p0}, Lcom/miui/aod/AODView;->handleUpdateIcons()V

    return-void
.end method

.method public onStartDoze()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/AODView;->mRegisteredCallLog:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/aod/Utils;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/AODView;->fillMissedCall()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/AODView;->mRegisteredCallLog:Z

    iget-object p0, p0, Lcom/miui/aod/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/util/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/miui/aod/util/ContentProviderBinder;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopDoze()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/aod/AODView;->mRegisteredCallLog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/util/ContentProviderBinder;

    invoke-virtual {v1}, Lcom/miui/aod/util/ContentProviderBinder;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/AODView;->mRegisteredCallLog:Z

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/miui/aod/AODView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/aod/AODView;->m24HourFormat:Z

    :cond_0
    return-void
.end method

.method public setSunImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/AODView;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    invoke-virtual {v0, p1, p0}, Lcom/miui/aod/AODStyleController;->setSunImage(ILandroid/view/View;)V

    return-void
.end method

.method public startClockPanelAnimation()V
    .locals 1

    const v0, 0x7f1100c4

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/miui/aod/widget/IAnimatable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/aod/widget/IAnimatable;

    invoke-interface {p0}, Lcom/miui/aod/widget/IAnimatable;->startAnimation()V

    :cond_0
    return-void
.end method
