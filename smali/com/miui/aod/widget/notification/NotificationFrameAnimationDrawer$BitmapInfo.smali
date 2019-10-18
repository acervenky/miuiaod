.class Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;
.super Ljava/lang/Object;
.source "NotificationFrameAnimationDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapInfo"
.end annotation


# instance fields
.field private final isEnd:Z

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mPosition:I

.field final synthetic this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;


# direct methods
.method public constructor <init>(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;->this$0:Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;->mPosition:I

    iput-boolean p4, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;->isEnd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer$BitmapInfo;->isEnd:Z

    return p0
.end method
