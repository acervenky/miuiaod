.class public Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;
.super Ljava/lang/Object;
.source "FrameAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/FrameAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameAnimationInfo"
.end annotation


# instance fields
.field public final mFps:I

.field public final mResIdArrays:[I

.field public final mResIdBg:I

.field public final mResIdHour:I

.field public final mResIdMin:I


# direct methods
.method private constructor <init>([IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mFps:I

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdArrays:[I

    iput p2, p0, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdBg:I

    iput p4, p0, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdHour:I

    iput p5, p0, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdMin:I

    return-void
.end method

.method synthetic constructor <init>([IIIIILcom/miui/aod/widget/FrameAnimationManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;-><init>([IIIII)V

    return-void
.end method
