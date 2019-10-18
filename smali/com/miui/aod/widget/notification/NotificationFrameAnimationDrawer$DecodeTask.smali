.class Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;
.super Ljava/lang/Object;
.source "NotificationFrameAnimationDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field private final mAnimRes:[I

.field private volatile mCurrentPosition:I

.field private volatile mDecoding:Z

.field final synthetic this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;


# direct methods
.method private constructor <init>(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;[II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mDecoding:Z

    iput-object p2, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mAnimRes:[I

    array-length p1, p2

    rem-int/2addr p3, p1

    iput p3, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;[IILcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;-><init>(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;[II)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->setDecoding(Z)V

    return-void
.end method

.method private setDecoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mDecoding:Z

    return-void
.end method

.method private shouldFinish()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mAnimRes:[I

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mDecoding:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    iget-object p0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mAnimRes:[I

    array-length p0, p0

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-direct {p0}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->shouldFinish()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->setDecoding(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mAnimRes:[I

    iget v2, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-static {v2, v0}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->access$400(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget v2, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    iget-object v3, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mAnimRes:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-static {v3}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->access$500(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    new-instance v5, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;

    iget-object v6, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    iget v7, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    invoke-direct {v5, v6, v0, v7, v2}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;-><init>(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;Landroid/graphics/Bitmap;IZ)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-static {v0}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->access$600(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    iget-object v2, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mAnimRes:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iput v1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->mCurrentPosition:I

    :cond_2
    invoke-direct {p0}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->shouldFinish()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->setDecoding(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-static {v0}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->access$700(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-static {v1}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->access$800(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$DecodeTask;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-static {v1}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->access$800(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
