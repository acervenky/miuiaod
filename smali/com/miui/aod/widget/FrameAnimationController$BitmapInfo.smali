.class Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;
.super Ljava/lang/Object;
.source "FrameAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/FrameAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapInfo"
.end annotation


# instance fields
.field private isEnd:Z

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mPosition:I

.field final synthetic this$0:Lcom/miui/aod/widget/FrameAnimationController;


# direct methods
.method public constructor <init>(Lcom/miui/aod/widget/FrameAnimationController;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->mPosition:I

    iput-boolean p4, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->isEnd:Z

    return-void
.end method

.method static synthetic access$600(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->mPosition:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->isEnd:Z

    return p0
.end method
