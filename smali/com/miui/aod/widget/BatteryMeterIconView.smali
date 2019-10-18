.class public Lcom/miui/aod/widget/BatteryMeterIconView;
.super Landroid/widget/ImageView;
.source "BatteryMeterIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;
    }
.end annotation


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCharging:Z

.field private mChargingMask:Landroid/graphics/drawable/Drawable;

.field private mChargingMaskPath:Landroid/graphics/Path;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mDark:Z

.field private mDarkBg:Landroid/graphics/drawable/Drawable;

.field private mIsDigit:Z

.field private mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mLevel:I

.field private mLow:Z

.field private mMaskCharging:Z

.field private mMaskProgress:Z

.field private mMaskScale:F

.field private mNeedRoundProgress:Z

.field private mPowerSave:Z

.field private mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private mProgressDarkDrawables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDrawables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressGravityStart:Z

.field private mProgressHeight:I

.field private mProgressMaskMax:I

.field private mProgressMaskMin:I

.field private mProgressMaskPath:Landroid/graphics/Path;

.field private mProgressOrientationPortrait:Z

.field private mProgressRect:Landroid/graphics/Rect;

.field private mProgressWidth:I

.field private mQuickCharging:Z

.field private mQuickChargingMask:Landroid/graphics/drawable/Drawable;

.field private mQuickChargingMaskPath:Landroid/graphics/Path;

.field private mRoundProgress:Landroid/graphics/drawable/Drawable;

.field private mStatus:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field private mUseLegacyDrawable:Z

.field private mWhiteBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/BatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/widget/BatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/aod/widget/BatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mClearPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 6

    :try_start_0
    const-string p0, "android.util.PathParser"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroid/graphics/Path;

    const-string v1, "createPathFromPathData"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p0, v0, v1, v3, v2}, Lcom/miui/aod/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateProgressDrawable()V
    .locals 5

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressOrientationPortrait:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressGravityStart:Z

    if-eqz v1, :cond_1

    const v1, 0x800003

    goto :goto_0

    :cond_1
    const v1, 0x800005

    :goto_0
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    iget-boolean v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressOrientationPortrait:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, v0, v1, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    sget-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->UNKNOWN:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    iput-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mStatus:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    const v2, 0x7f110117

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressWidth:I

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressHeight:I

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressWidth:I

    sub-int v3, v0, v3

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressWidth:I

    sub-int v3, v0, v3

    div-int/2addr v3, v4

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressHeight:I

    sub-int v2, v1, v2

    div-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressHeight:I

    sub-int v2, v1, v2

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/BatteryMeterIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateRoundProgressFlag(I)V
    .locals 1

    iget v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskMin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskMax:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mNeedRoundProgress:Z

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;
    .locals 2

    invoke-static {}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->values()[Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mCharging:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {v1}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mPowerSave:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {v1}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLow:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {v1}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {v1}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->ordinal()I

    move-result v1

    :goto_0
    iget-boolean p0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mIsDigit:Z

    add-int/2addr v1, p0

    aget-object p0, v0, v1

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mUseLegacyDrawable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskProgress:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mNeedRoundProgress:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mRoundProgress:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressOrientationPortrait:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLevel:I

    rsub-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressHeight:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mRoundProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLevel:I

    rsub-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressWidth:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mRoundProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskCharging:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mCharging:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mIsDigit:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickCharging:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickChargingMask:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickChargingMaskPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMask:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMaskPath:Landroid/graphics/Path;

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    iget-boolean v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mUseLegacyDrawable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/widget/BatteryMeterIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f110116

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/aod/widget/BatteryMeterIconView;->setup()V

    :cond_0
    return-void
.end method

.method public setUseLegacyDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mUseLegacyDrawable:Z

    return-void
.end method

.method public setup()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/aod/widget/BatteryMeterIconView;->updateResources()V

    invoke-direct {p0}, Lcom/miui/aod/widget/BatteryMeterIconView;->updateProgressDrawable()V

    iget v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLevel:I

    iget-boolean v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mDark:Z

    iget-boolean v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mIsDigit:Z

    iget-boolean v4, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickCharging:Z

    iget-boolean v5, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mCharging:Z

    iget-boolean v6, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mPowerSave:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/aod/widget/BatteryMeterIconView;->update(IZZZZZ)V

    return-void
.end method

.method public update(IZZZZZ)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLevel:I

    iput-boolean p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mIsDigit:Z

    iput-boolean p5, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mCharging:Z

    iput-boolean p4, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickCharging:Z

    iput-boolean p6, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mPowerSave:Z

    const/16 p3, 0x14

    if-gt p1, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLow:Z

    iget p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLevel:I

    invoke-direct {p0, p3}, Lcom/miui/aod/widget/BatteryMeterIconView;->updateRoundProgressFlag(I)V

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mDarkBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mWhiteBg:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const p4, 0x7f110116

    iget-object p5, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p4, p5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {p0}, Lcom/miui/aod/widget/BatteryMeterIconView;->getStatus()Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    move-result-object p3

    iget-object p4, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mStatus:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    if-ne p3, p4, :cond_2

    iget-boolean p4, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mDark:Z

    if-eq p4, p2, :cond_4

    :cond_2
    iput-boolean p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mDark:Z

    iput-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mStatus:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    iget-object p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mDark:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    :goto_2
    iget-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mStatus:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    goto :goto_2

    :goto_3
    iget-object p3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object p0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    :cond_5
    return-void
.end method

.method public updateResources()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/aod/widget/BatteryMeterIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskScale:F

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mWhiteBg:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mDarkBg:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskScale:F

    iget v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskScale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskCharging:Z

    iput-boolean v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskProgress:Z

    iget-boolean v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskCharging:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0x7f090071

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/aod/widget/BatteryMeterIconView;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMaskPath:Landroid/graphics/Path;

    const v2, 0x7f0201be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMaskPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mChargingMaskPath:Landroid/graphics/Path;

    const-string v4, "BatteryMeterIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create ChargingMaskPath Exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v2, 0x7f090075

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/aod/widget/BatteryMeterIconView;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickChargingMaskPath:Landroid/graphics/Path;

    const v2, 0x7f0201d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickChargingMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickChargingMaskPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    iput-object v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mQuickChargingMaskPath:Landroid/graphics/Path;

    const-string v4, "BatteryMeterIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create ChargingMaskPath Exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mMaskProgress:Z

    if-eqz v2, :cond_1

    const v2, 0x7f090073

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/aod/widget/BatteryMeterIconView;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskPath:Landroid/graphics/Path;

    const v2, 0x7f0201c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mRoundProgress:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    iput-object v3, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskPath:Landroid/graphics/Path;

    const-string v2, "BatteryMeterIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create ProgressMaskPath Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskMin:I

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressMaskMax:I

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201ca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201cb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v3, 0x7f0201cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/aod/widget/BatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const v2, 0x7f0201d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
